Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pages#home'

get "/images/page", to: "pages#images", as: "images"
get "/blogs/page", to: "pages#blogs", as: "blogs"

  root to: 'events#index'

  resources :events
end
