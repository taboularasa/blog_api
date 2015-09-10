Rails.application.routes.draw do
  resources :posts, except: [:new, :edit] do
    resource :validation, only: :show, controller: 'posts/validations'
  end
end
