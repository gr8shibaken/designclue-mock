Designclue::Application.routes.draw do
  root :to => 'mock#top'
  namespace :mock do
    get 'top'
  end
end
