Rails.application.routes.draw do

  root 'sessions#index'

  get '/log' => 'sessions#log'

  get '/reg' => 'sessions#reg'
 
  get '/main' => 'sessions#index'

  post 'login' => 'sessions#create'

  post '/register' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/logout' => 'sessions#destroy'

  get '/songs' => 'songs#index'

  post 'songs' => 'songs#create'

  get 'songs/:id' => 'songs#show'

  post '/adds' => 'adds#create'

end
