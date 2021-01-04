Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users' => 'users#create'
  get '/new/user' => 'users#new'
  post '/login' => 'sessions#create'
end
