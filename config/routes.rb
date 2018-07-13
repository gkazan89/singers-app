Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/singers" => "singers#index"
  get "/singers/:id" => "singers#show"
  post "/singers" => "singers#create"
  patch "/singers/:id" => "singers#update"
  delete "/singers/:id" => "singers#destroy"
end
