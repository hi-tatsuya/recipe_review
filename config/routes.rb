Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :recipes, only: [:index, :show]
end
