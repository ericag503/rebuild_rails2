Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons', {:via => :get, :to => 'lessons#show'})
end
