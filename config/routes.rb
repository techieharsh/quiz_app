Rails.application.routes.draw do
  

  get 'dashboard/index'

  root 'home#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :quizzes do
  	resources :attempts, only: [:new, :create, :show]
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
