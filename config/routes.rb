Rails.application.routes.draw do
  get 'recipes/index'

  # You can have the root of your site routed with "root"
  root 'recipes#index'
end
