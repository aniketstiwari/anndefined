Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

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
    end
  end

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  #root to: "products#index"
end

