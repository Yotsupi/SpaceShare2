Rails.application.routes.draw do
  devise_for :hosts, controllers: {
    sessions: 'hosts/sessions',
    passwords: 'hosts/passwords',
    registrations: 'hosts/registrations'
  }
  devise_for :guests, controllers: {
    sessions: 'guests/sessions',
    passwords: 'guests/passwords'
  }, skip: [:registrations]
  devise_scope :guest do
    get '/guests/sign_up' => 'guests/registrations#new'
    post '/guests' => 'guests/registrations#create', as: 'new_guest'
  end

  root to: 'homes#top'
  resource :guests, only: %i[show edit update]

  namespace :host do
    resources :spaces, except: [:destroy] do
      resources :reservations, only: %i[index show edit update]
    end
  end

  namespace :guest do
    resources :spaces, only: %i[index show] do
      post '/reservations/confirm' => 'reservations#confirm', as: 'confirm'
      get '/reservations/thanks' => 'reservations#thanks', as: 'thanks'
      patch '/reservations/cancel/:id' => 'reservations#cancel', as: 'cancel'
      resources :reservations, except: %i[edit index]
    end
    get '/reservations' => 'reservations#index', as: 'reservations'
  end
end
