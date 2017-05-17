Rails.application.routes.draw do
  get 'services/ping', to: 'ping#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
