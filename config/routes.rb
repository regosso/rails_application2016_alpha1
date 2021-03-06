Rails.application.routes.draw do
  
#  get 'cart_items/create'

#  get 'carts/show'

  get 'image/new'

  get 'image/create'

  # цікаво якщо я їх закоментую воно буде працювати норм?)get 'say/hello'
  #get 'say/goodbye'
  
  #додаємо тут роути для статичних сторінок
  get 'static/index'
  get 'static/about'
  get 'static/contacts'
  get 'static/delivery'
  #FAQ and reciewed messages
  get 'static/faq'
  get 'products/notlogged'
  #get 'say/review'
  #додали і тепер треба команду 
  #rake routes. DONE))
resources :products
resources :productos
resources :goods_groups
resources :genders
resources :images
#added here
resources :cart_item2s
resources :carts
get '/cart', to: 'carts#show', defaults: { id: 'current' }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  #ми створили 1 контроллер static, який назвало say_controller, але у нього - це таке як суфікс _controller. У ньому є 5 методів(екшенів). Тут ми його даємо в корінь
 #робимо індекс екшн дефолтним
  root 'static#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
