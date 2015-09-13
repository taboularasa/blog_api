Rails.application.routes.draw do
  resources :posts, except: [:new, :edit] do
    collection do
      get 'validate'
    end
  end
end
