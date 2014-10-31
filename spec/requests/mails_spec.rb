require 'rails_helper'

RSpec.describe 'Mail', type: :request do
  describe '/' do
    it 'works! (now write some real specs)' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  pending describe "click 'Send' link" do
    subject { page }

    before do
      visit root_path
      click_link 'Send'
    end

    it { should have_title('MailApp') }
  end
end
