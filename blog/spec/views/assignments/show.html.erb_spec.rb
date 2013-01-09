require 'spec_helper'

describe "assignments/show" do
  before(:each) do
    @assignment = assign(:assignment, stub_model(Assignment))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
