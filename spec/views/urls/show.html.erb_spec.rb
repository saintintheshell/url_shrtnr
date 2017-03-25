require 'rails_helper'

RSpec.describe "urls/show", type: :view do
  before(:each) do
    @url = assign(:url, Url.create!(
      :original_url => "Original Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Original Url/)
  end
end
