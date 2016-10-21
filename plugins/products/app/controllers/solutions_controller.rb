class SolutionsController < ApplicationController
  unloadable
  before_action :authorize_global, :only => [:new, :create]

  def index
  	@product = Product.find_by_id(params[:id])
  	@solutions = @product.solutions
  end

  def show
  end

  def new
    @author = User.current.firstname
  	@product = Product.find_by_id(params[:id])
  	@solution = @product.solutions.new
  end

  def create
    @product = Product.find_by_id(params[:id])
    @solution = @product.solutions.create(solution_params)
    if @solution.save
      flash[:notice] = 'Solution posted.'
      redirect_to products_path
    else
      flash[:error] = 'Solution not posted.'
      redirect_to :action => 'new'
    end
  end

  private
  	def solution_params
  		params.require(:solution).permit(:name, :description,:author,:reason,:id)
  	end
end
