class Assignment < ActiveRecord::Base
  attr_accessible :course, :description, :due_date, :email, :name, :is_instructor, :grade, :status, :semester
end
