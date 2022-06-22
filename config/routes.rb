Rails.application.routes.draw do
  root "champions#index"
  resources :champions, only: %i[index show]  do
    resources :notes, shallow: true, path_names: {new: 'new/:adversary_champion_id'}
  end
end
#, path_names: {new: 'new/:adversary_champion_id'}