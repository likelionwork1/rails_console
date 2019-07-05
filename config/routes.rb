Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/second'
  get 'homes/read'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'homes/edit/:id' => 'homes#edit'
  get 'homes/update/:id' => 'homes#update'
  get 'homes/delete/:id' => 'homes#delete'
  
  root 'homes#index'
end




