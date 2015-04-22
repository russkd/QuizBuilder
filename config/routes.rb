Rails.application.routes.draw do

# Static_page routes
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

# User routes
  get 'users' => 'users#index'
  get 'users/new' => 'users#new', as: "new_user"
  get 'users/:id' => 'users#show', as: "user"
  get 'signup' => 'users#new'
  post 'users' => 'users#create' 
  get 'users/:id/edit' => 'users#edit', as: "edit"
  patch 'users/:id/' => 'users#update'
  delete 'users/:id' => 'users#destroy'


  
end
