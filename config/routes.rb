Rails.application.routes.draw do

  root :to => "url#new"
  post '/urls' => 'url#create'
  get '/urls' => 'url#list'
  get ':short_url' => 'url#fwd'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
