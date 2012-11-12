require 'spec_helper'

describe "root url" do
  before do
    visit "/"
  end

  describe "rel='package'" do
    let(:link) { page.find(:css, "a[@rel='package']") }

    it "exists" do
      link.should_not be_nil
    end

    it "maps to /pkg" do
      link['href'].should eq('/pkg')
    end
  end


  it "has link with rel='downloads'" do
    page.should have_selector("a[@rel='downloads']")
  end
end
