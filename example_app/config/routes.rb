ActionController::Routing::Routes.draw do |map|
  map.resources :categories, :collection => {:dragdrop => :get}
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => 'index'
end
