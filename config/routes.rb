Rails.application.routes.draw do
  
  resources :workouts, only: [:index]

  resources :cycles, only: [:index]

  resources :cycle_workouts, only: [:index]

  resources :types, only: [:index]

  resources :workout_types, only: [:index]

  resources :users, only: [:index]

end
