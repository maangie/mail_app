require 'rails_helper'

RSpec.describe 'mails/index.html.erb', type: :view do
  it "should have 'Send' link" do
    render
    expect(rendered).to have_link 'Send'
  end
end
