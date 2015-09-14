Rails.application.routes.draw do
  resources :posts, except: [:new, :edit] do
    collection do
      post 'validate'
    end
  end
end
