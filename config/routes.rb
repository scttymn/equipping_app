Rails.application.routes.draw do
  resources :subscriptions
  resources :messages
  resources :auth_tokens
  resources :invitations
  resources :attendances
  resources :events
  resources :steps
  resources :paths
  resources :group_members
  resources :groups
  resources :guardianships
  resources :family_members
  resources :families
  resources :organization_people
  resources :addresses
  resources :organizations
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  root "rails/health#show"
end
