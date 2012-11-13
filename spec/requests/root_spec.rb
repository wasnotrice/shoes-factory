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

  describe "rel='downloads'" do
    let(:link) { page.find(:css, "a[@rel='downloads']") }

    it "exists" do
      link.should_not be_nil
    end

    it "maps to /dl" do
      link['href'].should eq('/dl')
    end
  end
end
