Rails.application.routes.draw do
  root 'change_machine#index'
  post 'change_machine/get_change', to: 'change_machine#get_change'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
