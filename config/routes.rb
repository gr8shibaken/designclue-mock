Designclue::Application.routes.draw do
  root :to => 'sessions#new'
  
  namespace :sessions do
    get 'new'
    get 'create'
    get 'destroy'
  end
  namespace :mock do
    get 'top'
    get 'job_index'
  end
  
end
