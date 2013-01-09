require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks" do
    it "display some tasks" do
      visit mooc_path
      page.should have_content 'go to bed'
    end
  end
end
