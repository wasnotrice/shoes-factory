require 'fast_spec_helper'
require 'factory'

describe Factory do
  subject { Factory.new }
  let(:package) { double('package') }

  before do
    subject.package_source = lambda { package }
  end

  it "creates a new package" do
    expect(subject.new_package).to eq(package)
  end
end
