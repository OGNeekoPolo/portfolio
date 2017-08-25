Rails.application.routes.draw do
  get '/home', to: 'portfolio#index'
  get '/story', to: 'portfolio#story'
  get '/work', to: 'portfolio#work'
  root 'portfolio#index'
end
