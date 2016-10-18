require "rails_helper"

RSpec.describe WebhooksController, :type => :controller do
  describe "GET #index" do
    context 'when success' do
      let(:params) {{
          'hub.mode' => 'subscribe',
          'hub.verify_token' => 'awesome_facebook_messager_token',
          'hub.challenge' => { key: 'something'}
      }}

      it "responds successfully with an HTTP 200 status code" do
        get :index, params
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(JSON.parse(response.body)['key']).to eq 'something'
      end
    end

    context 'when failure' do
      let(:params) {{
          'hub.mode' => 'subscribe',
          'hub.verify_token' => 'awesome_invalid_token',
          'hub.challenge' => { key: 'something'}
      }}

      it "responds successfully with an HTTP 200 status code" do
        get :index, params
        expect(response).to have_http_status(403)
      end
    end
  end
end