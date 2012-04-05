Designclue::Application.routes.draw do
  resources :contests , :only=> %w[index show create new destroy edit] do
    collection do
      get 'selectplan'
      post 'inputdetail'
      post 'confirm'
    end
  end

  resources :users

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
    get 'confirm'
    get 'payment'
    get 'payment_confirm'
    get 'post_complete'
    get 'designer_index'
    get 'designer_detail'
    get 'job_application'
    get 'garally'
    get 'mypage'
    get 'how_it_works'
    get 'userguide_1'
    get 'userguide_2'
  end

end
