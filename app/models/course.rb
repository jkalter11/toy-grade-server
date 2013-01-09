class Course < ActiveRecord::Base
  attr_accessible :course_code, :description, :semester, :email, :name, :is_instructor
end
