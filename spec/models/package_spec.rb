describe Package do
  subject { Package.new }

  context "when new" do
    its(:wrapper_filename) { should be_empty }
  end
end
