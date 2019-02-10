Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'

end
