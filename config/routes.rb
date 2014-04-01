PracticeMakesPerfect::Application.routes.draw do
  root to: "tasks#index"
  resources :tasks
  get "tasks/index"
end
