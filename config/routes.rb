Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  get 'api/v1/twowheelers', to: 'twowheelers#index'
  post 'api/v1/twowheelers', to: 'twowheelers#create'
  delete 'api/v1/twowheelers/:id', to: 'twowheelers#destroy'
  post 'api/v1/login', to: 'users#login'
  post 'api/v1/signup', to: 'users#signup'
  delete 'api/v1/reservation/:id', to: 'reservations#destroy'
  post 'api/v1/reservation/', to: 'reservations#create'

end
