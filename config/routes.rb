Rails.application.routes.draw do
  devise_for :users
  get 'persons/Profile'
  get 'home/index'
  get 'events/index'
  get 'results/index'
  get 'partner/index'
  get 'persons/index'
  get 'volunteer/index'

  get 'persons/profile', as: 'user_root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
