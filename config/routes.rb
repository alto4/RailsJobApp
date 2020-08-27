Rails.application.routes.draw do
  
  get 'jobs' => 'jobs#index'
  get 'jobs' => 'jobs#show'
  post 'jobs' => 'jobs#create'

end
