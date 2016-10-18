class WebhooksController < ApplicationController
  def index
    if params['hub.mode'] == 'subscribe' && params['hub.verify_token'] == 'awesome_facebook_messager_token'
      render json: params['hub.challenge'], status: 200
    else
      puts "Failed validation. Make sure the validation tokens match."
      render status: 403
    end

  end
end
