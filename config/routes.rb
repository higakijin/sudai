Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :users, only:[:edit, :show, :update]
  resources :posts, only:[:index, :create, :new, :destory, :show] do
    resource :likes, only:[:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  get '/favo' => 'posts#favo'
end
