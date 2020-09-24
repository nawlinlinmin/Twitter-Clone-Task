Rails.application.routes.draw do
  get 'swits/index'
  resources :swits do
    collection do
    post :confirm
    end
  end
end
