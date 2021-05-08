Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :learnings, only: [:new, :create, :index, :show, :edit, :destroy, :update] do
    resources :learning_comments, only: [:create, :destroy]
    resources :chapters, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  end
  resources :users, only: [:show, :edit, :update]
end
