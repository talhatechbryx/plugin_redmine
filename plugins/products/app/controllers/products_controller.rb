class ProductsController < ApplicationController
  unloadable
  before_action :authorize_global, :only => [:new, :create]
  
  def index
  	@products = Product.all
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  def new
	 	@product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Product saved.'
      redirect_to products_path
    else
      flash[:error] = 'Product not saved.'
      redirect_to :action => 'new'
    end
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :description, :active)
  	end
end
