Rails3Example::Application.routes.draw do
  resources :categories
  get "home/index"
  match "/savesort" => 'home#savesort'
  
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
