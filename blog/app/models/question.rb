class Question < ActiveRecord::Base
  attr_accessible :a, :answer, :assignment, :b, :c, :course, :d, :is_mc, :question, :semester
end
