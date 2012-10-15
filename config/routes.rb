Bushido::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :tags

  resources :article_categories

  resources :tag_linkers

  resources :articles

  ActiveAdmin.routes(self)

  devise_for :users, :path => "user",
             :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret',
                              :confirmation => 'verification', :unlock => 'unblock', :registration => 'register',
                              :sign_up => 'singup' }

  resources :users
  resources :thumbnails
  resources :pages

  root to: "pages#show", name: "main"
end
