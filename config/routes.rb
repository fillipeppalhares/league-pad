Rails.application.routes.draw do
  root "champions#index"
  resources :champions, only: %i[index show]  do
    resources :notes, shallow: true
    #get '/:adversary_champion_id', to: 'notes#index', as: "adversary_champion_notes"
  end
end




# resources :champions, only: %i[index show], path: "/"  do
#   resources :champions, only: %i[index show], path: "/" 
# end