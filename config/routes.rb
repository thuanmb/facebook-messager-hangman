Rails.application.routes.draw do
  resource :webhooks do
    get :index
    post :create
  end
end
