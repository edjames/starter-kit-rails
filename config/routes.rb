Rails.application.routes.draw do

  mount PgHero::Engine, at: '/pghero'
  mount Sidekiq::Web,   at: '/sidekiq'

  root to: 'home#index'

end
