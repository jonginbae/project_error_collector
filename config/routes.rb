Rails.application.routes.draw do
  root "login#index"

  get '/login' => 'login#index' , :as => "login"
  post '/login' => 'login#create'
  delete '/logout' => 'login#destroy' , :as =>"logout"
  get '/login/findPassword' => 'login#findPassword', :as => "findPassword"
  post '/login/findPassword' => 'login#sendEmail'

  get'/user/new' => "user#new" , :as => "user_new"
  post'/user/new' => "user#create"
  get '/user/edit' => "user#edit" ,:as => "user_edit"
  patch '/user/edit' => "user#update"


  get '/main' => 'error_collector#index', :as => 'main'
  get '/error/new' => 'error_collector#new', :as =>'error_new'
  post '/error/new' => 'error_collector#create'
  get '/error/likes' => 'error_collector#newrel', :as => 'error_like'
  post '/error/likes' => 'error_collector#createrel'
  post '/error/remove' => 'error_collector#remove' , :as =>"error_remove"

  get '/mylist/' => 'mylist#index' , :as => 'mylist'
end
