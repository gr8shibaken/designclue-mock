Designclue::Application.routes.draw do
  root :to => 'mock#index'
  namespace :mock do
    get 'index'
  end
end
