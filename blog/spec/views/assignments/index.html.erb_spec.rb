require 'spec_helper'

describe "assignments/index" do
  before(:each) do
    assign(:assignments, [
      stub_model(Assignment),
      stub_model(Assignment)
    ])
  end

  it "renders a list of assignments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
