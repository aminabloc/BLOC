Rails.application.routes.draw do
  
  

  resources :jobs do
    resources :japps 
  end

  devise_for :companies
  devise_for :users
  
  resources :posts do
  	resources :comments
  end

  resources :users
  resources :studenthome
  resources :companyhome
  resources :jobapps

 root "posts#index"

  get '/about', to: 'pages#about'
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  get "hashtags/:hashtag",   to: "posts#index",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

end
