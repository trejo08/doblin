Rails.application.routes.draw do

  use_doorkeeper
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions"
  }
  devise_for :admins, path: 'admins', controllers: {
    sessions: "admins/sessions"
  }
  root to: "home#index"
end
