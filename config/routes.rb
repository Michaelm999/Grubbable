Rails.application.routes.draw do

  get 'relationship/create'

  get 'relationship/destroy'

  get 'users_user/create'

  get 'users_user/destroy'

  root 'front_page#index'

  get '/login'     => 'sessions#new', as: :login
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  get '/users' => 'users#index', as: :users
  get '/users/new' => 'users#new', as: :new_user
  get '/users/:id' =>'users#show', as: :user
  get '/users/:id/comments' => 'comment#show', as: :user_comments

  post '/users' => 'users#create'
  post '/users/:id/comments' => 'comment#create', as: :comment_section
  get 'users/:id/edit'=>'users#edit', as: :edit_user
  patch  'users/:id/edit' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  delete 'users/:id/comments/:id' => 'comment#destroy'

  get '/relationship/:id' => 'relationships#create', as: :follow
  get 'relationship/:id' => 'relationships#destroy', as: :unfollow

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
