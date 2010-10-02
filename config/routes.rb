Wisdombiscuit::Application.routes.draw do

  resources :fortunes

  resource :fortune, :only => :random do
    get 'random'
  end

  root :to => "fortunes#random"

end
