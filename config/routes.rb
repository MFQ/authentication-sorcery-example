Rails.application.routes.draw do
  # get 'users/new'

  root to: "homes#index"
  get "page", to: "homes#page"
  resources :users, only: [:new, :create] do 
  	member do
    	get :activate
  	end
  end


  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_up', to: 'users#new', as: :sign_up
	get '/log_in', to: 'sessions#new', as: :log_in
	delete '/log_out', to: 'sessions#destroy', as: :log_out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

