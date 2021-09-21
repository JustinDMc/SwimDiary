Rails.application.routes.draw do
  
  resources :workouts, only: [:index]

  resources :cycles, only: [:index]

end
