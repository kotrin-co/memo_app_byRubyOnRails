Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"memos#index"
  get "/new", to:"memos#new"
  post "/create", to:"memos#create"
  delete "/memos/:id", to:"memos#destroy"
  get "/memos/:id/edit", to:"memos#edit"
  patch "/memos/:id", to:"memos#update"
end
