Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :news, only: :index
end
