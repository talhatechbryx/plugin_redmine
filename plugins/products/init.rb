Redmine::Plugin.register :products do
  name 'Products plugin'
  author 'Author name'
  description 'Plugin for adding products into the projects'
  version '0.0.1'

	project_module :products do
	  permission :add_products, :products => [:new,:create]
		permission :products, { :products => [:index] }, :public => true
	end

  menu :project_menu, :products, { :controller => 'products', action: 'index' }, :caption => 'Products', :after => :activity, :param => :project_id
end
