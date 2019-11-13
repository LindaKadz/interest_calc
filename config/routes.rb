Rails.application.routes.draw do
  root 'calculators#new'
  resources :calculators
  delete '/calculators', to: 'calculators#clear_list'
end
