Rails.application.routes.draw do

resources :entries

resources :entries, except: [:destroy]
resources :entries, only: [:index, :show]
root 'entries#index'

end
