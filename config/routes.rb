Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do # outputs all articles#[resources: index, create, new, edit, show, update]
    resources :comments # nesting routes
  end

  root 'welcome#index' # instead of seeing "yay rails" page
end
