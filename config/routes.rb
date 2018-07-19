Rails.application.routes.draw do

  devise_for :users
  resources :comments
  # get 'user_posts' => 'posts#user_posts'

  root 'posts#index'
	
  resources :posts
  get 'index' => 'posts#index'
  get 'about' => 'practice#about'
  get 'write_post' => 'posts#new'

# as: sets the helper
  get '/:name' => 'posts#user_posts', as: 'user_posts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
