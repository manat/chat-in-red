Rails.application.routes.draw do
  get 'maintenances', to: 'maintenances#index'
  post 'maintenances', to: 'maintenances#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) && defined?(Sidekiq::Web)
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
