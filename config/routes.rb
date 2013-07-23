Wasteblue::Application.routes.draw do

  resources :categories

  match "/done" => "purchasing_ads#done"

  get "users/show"

  get "users/index"

  get "legal_entities/show"

  get "legal_entities/index"

  get "faq/view"

  get "policy/view"

  get "terms/view"

  get "press/view"

  get "partners/view"

  get "about/view"

  get "awasteblue/view"

  get "login" => "awasteblue#login"

  get "cadastrar" => "awasteblue#cadastrar"

  get "ads/all"

  get "advertise/index"

  get "howto/index"

  get "blog/index"

  get "contato/index"
  get "construction/index"
  
  devise_for :legal_entities
  devise_for :users

  devise_scope :legal_entity do
    get 'pessoa_juridica/sign_in', :to => 'devise/sessions#new', :as => :new_legal_entity_session
    get 'pessoa_juridica/sign_up', :to => 'devise/registrations#new', :as => :new_legal_entity_registration
    get 'pessoa_juridica/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_legal_entity_session
  end

  devise_scope :user do
    get 'pessoa_fisica/sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'pessoa_fisica/sign_up', :to => 'devise/registrations#new', :as => :new_user_registration
    get 'pessoa_fisica/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  match 'pessoa_juridica/conta/:id' => 'legal_entities#show'
  match 'pessoa_fisica/conta/:id' => 'users#show'

  match 'pessoa_juridica/conta/:id/editar' => 'legal_entities#edit'
  match 'pessoa_fisica/conta/:id/editar' => 'users#edit'

  match 'pessoa_juridica/conta/:id/criar_anuncio/venda' => 'sales_ads#new'
  match 'pessoa_fisica/conta/:id/criar_anuncio/venda' => 'sales_ads#new'

  match 'pessoa_juridica/conta/:id/criar_anuncio/compra' => 'purchasing_ads#new'
  match 'pessoa_fisica/conta/:id/criar_anuncio/compra' => 'purchasing_ads#new'

  resources :legal_entities
  resources :posts
  resources :users
  resources :sales_ads
  resources :purchasing_ads

  # The priority is based upon order of creation:
  # first created -> highest priority.

 
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
end
