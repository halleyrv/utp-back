Rails.application.routes.draw do
  post 'login', to: 'sessions#login'
  resources :users, only: [:index, :create]
  resources :nota_cursos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
