Rails.application.routes.draw do

  devise_for :users

  mount PgHero::Engine, at: '/pghero'
  mount Sidekiq::Web,   at: '/sidekiq'

  root to: 'home#index'

end
