Rails.application.routes.draw do
  resource :webhooks do
    get :index
  end
end
