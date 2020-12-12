Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  root 'welcome#index'
  resources :users, only: [:index]
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
end
