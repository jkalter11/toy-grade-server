class Answer < ActiveRecord::Base
  attr_accessible :answer, :course, :is_correct, :question, :semester, :student_email, :assignment
end
