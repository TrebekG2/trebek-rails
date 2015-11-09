Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
root to: "registrations#index"

post "/signup", to: "registrations#create"
delete "/signup", to: "registrations#destroy"

post "/login", to: "registrations#login"
post "/destroy", to: "registrations#destroy"

get "/deck", to: "decks#index"
delete "/deck/destroy/:id", to: "decks#destroy"
post "/deck/create", to: "decks#create"
# post "/category", to: "decks#category"

get "/deck/:id/cards", to: "cards#index"
post "/deck/:id/cards", to: "cards#create"
delete "/deck/:id/cards", to: "cards#destroy"


get "/guesses", to: "guesses#index"
post "guesses/create", to: "guesses#create"

get "/card/:id/edit", to: "cards#edit"
post "/card/:id/edit", to: "cards#update"
get "/card/category", to: "cards#category"




  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
