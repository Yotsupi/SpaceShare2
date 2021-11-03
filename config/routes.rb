Rails.application.routes.draw do
  devise_for :hosts, controllers: {
    sessions:      'hosts/sessions',
    passwords:     'hosts/passwords',
    registrations: 'hosts/registrations'
  }
  devise_for :guests, controllers: {
    sessions:      'guests/sessions',
    passwords:     'guests/passwords',
    registrations: 'guests/registrations'
  }

  root to: 'homes#top'
  
  namespace :host do
    resources :spaces, except:[:destroy]
  end
  
  namespace :guest do
    resources :spaces, only:[:index, :show]
  end
    
end
