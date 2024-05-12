Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'home#index'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end



end
