Rails.application.routes.draw do
  get '/employees' => 'employees#index'
  post '/employees' => 'employees#create'
  get '/employees/:id' => 'employees#show'
end
