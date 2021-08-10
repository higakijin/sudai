Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :users 
  resources :posts do
    resource :likes, only:[:create, :destroy]
  end
end
