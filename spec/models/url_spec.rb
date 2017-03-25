require 'rails_helper'

RSpec.describe Url, type: :model do
  it "should not be able to save if the original_url is blank" do
    u = Url.new
    assert_equal(false, u.save)
  end
  it "should not be able to save if the original_url is not a valid url" do
    u = Url.new(original_url: "jeff@hotmail.com")
    assert_equal(false, u.save)
  end
  it "should have a short_url method that returns the short url as a string" do
    u = Url.create(original_url: "www.google.com")
    assert_equal("http://localhost:3000/1")
    assert_equal(true, u.save)
    assert_equal("http://localhost:3000/1", u.short_url)
  end
end
end
