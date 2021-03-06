Rails.application.routes.draw do
  get 'dashboards/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboards#index'
  namespace 'api' do
    namespace 'v1' do
      resources :notebooks
    end
  end
  get '/api/v1/external_books' => 'api/v1/notebooks#external_books'
end
