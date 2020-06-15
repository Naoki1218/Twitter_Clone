Rails.application.routes.draw do
  resources :rats do
    collection do
      post :confirm
    end
  end
end
