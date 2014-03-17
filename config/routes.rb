Salon1::Application.routes.draw do

get "/appointments/summary" => 'appointments#summary'

resources :salons do
 resources :comments
 resources :services
 resources :stylists
end

resources :users
resources :sessions, only: [:new, :create, :destroy]
	
# get "/clients" => 'clients#new'
# get "/clients/create" => 'clients#create'
# get "/clients/show" => 'clients#show'

resources :clients
resources :appointments

root 'welcome#index'

end


