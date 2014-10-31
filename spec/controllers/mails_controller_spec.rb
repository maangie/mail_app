require 'rails_helper'

RSpec.describe MailsController, type: :controller do
  describe 'GET index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET transmit' do
    it 'returns a 302 status code' do
      get :transmit
      expect(response).to have_http_status(:redirect)
    end
  end
end
