WildLife::Application.routes.draw do
  match("/", {via: :get, to: "species#index"})

  match("/species", {via: :get, to: "species#index"})

  match("/species/new", {via: :get, to: "species#new"})
  match("/species/:id", {via: :get, to: "species#show"})

  match("/species/edit/:id", {via: :get, to: "species#edit"})
  match("/species/update", {via: [:patch, :put], to: "species#update"})

  match("/species", {via: :post, to: "species#create"})
  match("/species/delete/:id", {via: :delete, to: "species#destroy"})

  match('/species/:species_id/sightings/new', {via: :get, to: "sightings#new"})
  match('/sightings/new', {via: :post, to: "sightings#create"})

  match('/sightings/delete/:id', {via: :delete, to: "sightings#destroy"})
  match('/sightings/edit/:id', {via: :get, to: "sightings#edit"})
  match('/sightings/update/:id', {via: [:patch, :put], to: "sightings#update"})
  match('/sightings', {via: :get, to: 'sightings#index'})
end
