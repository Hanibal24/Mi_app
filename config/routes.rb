Rails.application.routes.draw do
  get 'render/index'
  get 'home/index'
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'render#index'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end



end
