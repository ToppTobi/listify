Rails.application.routes.draw do
  get "activity_logs/index"

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }

  resources :users, except: [:new, :create]

  resources :groups do
    resources :products
  end

  resources :activity_logs, only: [:index]

  root to: "groups#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
