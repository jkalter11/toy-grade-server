require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :course_code => "Course Code",
        :description => "Description",
        :semester => "Semester"
      ),
      stub_model(Course,
        :course_code => "Course Code",
        :description => "Description",
        :semester => "Semester"
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course Code".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Semester".to_s, :count => 2
  end
end
