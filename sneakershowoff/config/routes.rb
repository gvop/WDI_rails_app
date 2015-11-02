Rails.application.routes.draw do
  root "sneakers#index"


  resources :sneakers do 
    member do 
      put "like", to: "sneakers#upvote"
    end
  end
  resources :makes
  devise_for :users
  resources :users, only: [:index, :show]

end
