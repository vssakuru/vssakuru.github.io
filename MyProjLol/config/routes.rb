Rails.application.routes.draw do
  get 'company/index' => 'company#index'

  get 'com_man/index' => 'com_man#index'

  get 'signup' => 'users#new'

  #get 'admin/index'

  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'govt/index' => 'govt#index'


  resources :users
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    get 'logout' => :destroy
  end

  resources :users do
    member do
      get :confirm_email
    end
  end

  root 'admin#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
