Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  
  

resources :users do
end

  resources :studenthome
  resources :companyhome

  resources :jobs do
    resources :japps 
end

 
  
  resources :posts do
  	resources :comments
  end

  get 'post/:id/likes', to: 'posts#likes', as: :likes
  get 'job/:id/saves', to: 'jobs#saves', as: :saves





  get '/myjobs', to: 'jobs#myjobs', as: :myjobs
  get 'post/:id/repost', to: 'postss#reposts', as: :reposts


 root "passthrough#index"

  get '/about', to: 'pages#about'
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  get "hashtags/:hashtag",   to: "posts#index",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags



  devise_scope :user do
   get "/corporatesignup" => "devise/registrations#company"
end

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

end
