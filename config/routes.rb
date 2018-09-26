Rails.application.routes.draw do
  root "tasks#index"

  get '/tasks', to: 'tasks#index', as: "tasks"

  get '/tasks/new', to: 'tasks#new', as: "new_task"
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get '/tasks/:id', to: 'tasks#show', as: "task"

  patch '/tasks/:id', to: 'tasks#update', as: "update_task"
  put '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy', as: "delete_task"

  patch '/tasks/:id/completed', to: 'tasks#completed', as: "completed_tasks"
end
