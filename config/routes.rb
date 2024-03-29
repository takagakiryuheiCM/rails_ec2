Rails.application.routes.draw do
  resources :t_memos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "check" => "health#show"
  # Defines the root path route ("/")
  # root "posts#index"
  root "t_memos#index"
end
