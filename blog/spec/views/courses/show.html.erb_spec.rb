require 'spec_helper'

describe "courses/show" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :course_code => "Course Code",
      :description => "Description",
      :semester => "Semester"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Course Code/)
    rendered.should match(/Description/)
    rendered.should match(/Semester/)
  end
end
