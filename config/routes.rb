HackerNewsRails::Application.routes.draw do

  root :to => 'hackers#index'

  #resources :hackers

  # ... shortcut for ...

  get "/hackers", to: "hackers#index", as: :hackers
  post "/hackers", to: "hackers#create"
  get "/hackers/new", to: "hackers#new", as: :new_hacker
  get "/hackers/:id/edit", to: "hackers#edit", as: :edit_hacker
  get "/hackers/:id", to: "hackers#show", as: :hacker
  put "/hackers/:id", to: "hackers#update"
  #delete "/hackers/:id", to: "hackers#destroy"

  # ... shortcut for ...

  match "/hackers/:id", to: "hackers#destroy", via: [:delete]

  # ... custom routes are okay, too!

  match "/xxx", to: "hackers#index", as: :porno, via: [:get, :put, :delete]

  resources :bonobos do
    resources :eyes
    resource :tail
  end

end
