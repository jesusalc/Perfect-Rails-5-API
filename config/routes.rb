Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  contraints subdomain 'api' do
    scope module: 'api' do
      namespace :v1 do
        resource :users
      end
    end
  end  

end
