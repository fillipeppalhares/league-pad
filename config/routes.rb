Rails.application.routes.draw do
  root "champions#index"
  resources :champions, only: %i[index show]
end
