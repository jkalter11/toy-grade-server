class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :description
      t.string :semester
      
      t.string :email,              :null => false, :default => ""
      t.string :name,              :null => false, :default => ""
      t.boolean :is_instructor,     :null => false, :default => false
      
      t.timestamps
    end
  end
end
