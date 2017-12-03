Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"

  namespace :admin do
    resources :restaurants
    
    # Category 只有index，將show, new, edit 都搬進index裡。
    resources :categories, except: [:show, :new, :edit]
    root "restaurants#index"
  end
end
