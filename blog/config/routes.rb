Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'
  mount API::Root => "/"

  get 'welcome/index'
  get 'welcome/show'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
