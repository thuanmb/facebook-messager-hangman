require 'facebook/messenger'

Facebook::Messenger.config.access_token = ENV['facebook_bot_access_token']
Facebook::Messenger.config.app_secret = ENV['facebook_bot_app_secret']
Facebook::Messenger.config.verify_token = ENV['facebook_bot_verify_token']

Facebook::Messenger::Subscriptions.subscribe