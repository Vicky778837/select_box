Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "questions#index"

  resources :questions do
    collection do
      delete 'destroy_multiple'
    end
  end

end
