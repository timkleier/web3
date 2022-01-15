Rails.application.routes.draw do
  resources :terms do
    resources :term_definitions, as: 'definitions', path: 'definitions' do
      resources :user_definition_votes, as: 'user_votes', path: 'user_votes', only: [:create, :destroy]
    end
  end
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  root to: "users#index"

  resources :users
  resources :resources
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
