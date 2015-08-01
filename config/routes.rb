Rails.application.routes.draw do
  
  
  devise_for :users
  resources :posts do
  	resources :comments
  end


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
