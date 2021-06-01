Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :recipes do
    resources :reviews, only: [:index, :create]
  end
end
