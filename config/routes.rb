Rails.application.routes.draw do

  # SITE VITRINE
  root 'static_pages#home'
  get '/peer-learning', to: 'static_pages#peerlearning', as: 'home_peer_learning'
  get '/faq', to: 'static_pages#faq', as: 'home_faq'

  get '/about', to: 'static_pages#about', as: 'home_about'
  get '/mentions-legales', to: 'static_pages#mentions_legales', as: 'home_mentions_legales'
  get '/contact', to: 'static_pages#contact', as: 'home_contact'
  post '/contact', to: 'static_pages#contact_send_message'

   # DEVISE USERS
   devise_for :users, controllers: { registrations: 'registrations' }, skip: [:registrations, :sessions]
  #  devise_scope :user do
  #    get 'signup', to: 'registrations#new', as: :new_user_registration
  #    post 'signup', to: 'registrations#create', as: :user_registration
  #    get 'login', to: 'devise/sessions#new', as: :new_user_session
  #    post 'login', to: 'devise/sessions#create', as: :user_session
  #    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  #  end

end
