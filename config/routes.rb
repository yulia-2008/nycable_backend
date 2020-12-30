Rails.application.routes.draw do
 # root to: 'welcome#index'
  
  resources :ratings
  resources :companies
  resources :reviews
  resources :comments
  resources :users

  
  post '/login', to: 'auth#create'
  get '/technicians/:id/reviews', to: 'users#technician_reviews' # reviews about technician
  get '/technicians/:id/ratings', to: 'users#technician_ratings' # rating of technician

  get '/companies/:id/reviews', to: 'companies#reviews'
  get '/companies/:id/ratings', to: 'companies#ratings'
  
  get '/users/:id/reviews', to: 'users#user_reviews'   # reviews that user wrote (author)
  get '/users/:id/ratings', to: 'users#user_ratings'   # ratings that user put (author)

  get '/technicians', to: 'users#technicians'
  get '/profile', to: 'users#profile'
  post '/users/:id/upload_photo', to: 'users#upload_photo'

end
