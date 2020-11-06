Rails.application.routes.draw do
  # get 'cocktails/new'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :edit]
  end
  resources :doses, only: :destroy
end
