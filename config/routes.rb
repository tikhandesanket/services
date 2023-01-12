Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"

  end
  
  post 'get_report' => 'home#get_report'
  # root 'home#index'
  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" token git  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
end
