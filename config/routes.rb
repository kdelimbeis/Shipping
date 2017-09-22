Rails.application.routes.draw do

  root to: "jobs#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :users do
  resources :ships
end

resources :users do
  resources :jobs
end

end
