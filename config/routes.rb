Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
       resources :products, :users, :carts
      
       # only: [:index, :update]
    end
  end
end
