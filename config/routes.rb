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
    get 'job_detail'
    get 'job_post_1'
    get 'job_post_2'
  end

end
