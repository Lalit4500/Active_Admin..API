Rails.application.routes.draw do
  resources :terms_and_conditions
  devise_for :admin_users, ActiveAdmin::Devise.config
  #root 'terms_and_conditions#index'
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
scope '/api' do
    resources :terms_and_conditions
end

end
