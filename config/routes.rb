Rails.application.routes.draw do

  get "/employees", to: "employees#index"
  post "/employees", to: "employees#create"
  get "/employees/:id", to: "employees#show"

  namespace :api do
    namespace :v1 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
      patch '/employees/:id' => 'employees#update'
      delete '/employees/:id' => 'employees#destroy'
    end

    namespace :v2 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
      patch '/employees/:id' => 'employees#update'
      delete '/employees/:id' => 'employees#destroy'
    end
  end
end
