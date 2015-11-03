Rails.application.routes.draw do

  root "general#front"

  resources :sneakers do 
    member do 
      put "like", to: "sneakers#upvote"
    end
  end

  resources :makes
  devise_for :users
  resources :users, only: [:index, :show]
  resources :comments, only: [:create, :destroy]

end

