require 'spec_helper'

describe "profile" do
  before do
    visit "/"
    profile_url = page.find(:css, "a[@rel='profile']")['href']
    visit profile_url
  end

  it "exists" do
    page.should_not be_nil
  end
end
