Rails.application.routes.draw do
  get '/about' ,to: 'pages#about_us'
  get '/contact' ,to: 'pages#contact_us'
  get '/privacy' ,to: 'pages#privacy_policy'
  get '/terms_and_conditions' ,to: 'pages#terms_and_conditions'
  # get '/home/index' ,to: 'home#index'
  root "home#index"

  resource :session
  resource :registration
  resource :password_reset
  resource :password 

end
