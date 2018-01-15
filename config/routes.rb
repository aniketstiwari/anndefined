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
    end
  end
end

