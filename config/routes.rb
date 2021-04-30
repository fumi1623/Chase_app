Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :learnings, only: [:new, :create, :index, :show, :edit, :destroy] do
    resources :learning_comments, only: [:create, :destroy]
  end
end
