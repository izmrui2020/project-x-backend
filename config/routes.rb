Rails.application.routes.draw do
  resources :oogiris
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :posts

end
