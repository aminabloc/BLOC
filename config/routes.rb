Rails.application.routes.draw do
  devise_for :users
  
  

resources :users do
end


  resources :jobs do
    resources :japps 
end

 
  
  resources :posts do
  	resources :comments
  end

  get 'post/:id/likes', to: 'posts#likes', as: :likes
  get 'job/:id/saves', to: 'jobs#saves', as: :saves





  get '/myjobs', to: 'jobs#myjobs', as: :myjobs
  get '/liked', to: 'posts#liked', as: :liked_posts

#home page routes
  get '/home/student', to: 'passthrough#studenthome', as: :student_home
  get '/home/company', to: 'passthrough#companyhome', as: :company_home

#index page for all company users
get '/allcompanies', to: 'users#companies', as: :companies_listed


  get 'post/:id/repost', to: 'posts#reposts', as: :reposts


 root "passthrough#index"

  get '/about', to: 'pages#about'
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  get "hashtags/:hashtag",   to: "posts#index",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags



  devise_scope :user do
end

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

end
