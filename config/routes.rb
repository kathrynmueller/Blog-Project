Rails.application.routes.draw do

  resources :comments
  root 'posts#index'
	
  resources :posts
  get 'index' => 'posts#index'
  get 'about' => 'practice#about'
  get 'new-post' => 'posts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
