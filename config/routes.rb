Rails.application.routes.draw do

  

  devise_for :users
  root 'homes#index'
  
  resources :homes do
    collection do
      get 'homepage'
      get 'about_us'
      get 'faq'
      get 'terms_and_conditions'
      get 'restro'
    #  get 'flour'
      get 'contact_us'
     # get 'concept'
     # get 'receipies'
     # get 'facts'
     # get 'historic_value'
      get 'see_more_details'
      get 'product_popup'
    end
  end

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :checkouts, only: [:shipping, :billing] do
    collection do
      get :shipping
      get :billing
    end
  end

  #root to: "products#index"
end

