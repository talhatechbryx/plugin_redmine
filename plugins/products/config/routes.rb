# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :projects do
	member do
		resources :products do
			member do
				resources :solutions
			end
		end
	end
end

# resources :custom_menu, :controller => 'products'

# resources :projects do
#   member do
#     resources :products do
#       member do
#         resources :solutions
#       end
#     end
#   end
