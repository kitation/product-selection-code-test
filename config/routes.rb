Rails.application.routes.draw do
    resources :products, only: :index do
        collection do
            get :sports
        end
    end
    resources :baskets, only: :create
    root 'products#index' 
end
