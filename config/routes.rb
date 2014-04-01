WildLife::Application.routes.draw do
  match("/", {via: :get, to: "species#index"})
  match("/species", {via: :get, to: "species#index"})

  match("/species/new", {via: :get, to: "species#new"})
  match("/species/:id", {via: :get, to: "species#show"})

  match("/species/edit/:id", {via: :get, to: "species#edit"})
  match("/species/update", {via: [:patch, :put], to: "species#update"})

  match("/species", {via: :post, to: "species#create"})
  match("/species/delete/:id", {via: :delete, to: "species#destroy"})
end
