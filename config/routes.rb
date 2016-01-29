Rails.application.routes.draw do
  resources :help_cases
  devise_for :users
  root "help_cases#index"
end
