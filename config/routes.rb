Wisdombiscuit::Application.routes.draw do

  devise_for :users do
    get 'signup', :to => 'devise/registrations#new'
    get 'login',  :to => 'devise/sessions#new'
  end  

  resources :fortunes

  resource :fortune, :only => :random do
    get 'random'
  end

  root :to => "fortunes#random"

end
