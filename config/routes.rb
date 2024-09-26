Rails.application.routes.draw do
  devise_for :users

  # Entferne die einzelnen get-Routen für groups
  resources :groups do
    resources :products  # Verschachtelte Routen für Produkte innerhalb der Gruppe
  end



  root to: "groups#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
