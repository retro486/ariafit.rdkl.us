Rails.application.routes.draw do
  get '/tos', to: 'placeholder#tos'
  get '/privacy', to: 'placeholder#privacy'

  resources :users, only: [:create, :destroy] do
    collection do
      get :sign_out
    end
  end

  root to: 'placeholder#step1'
end
