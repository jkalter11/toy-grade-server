class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :course
      t.text :description
      t.datetime :due_date
      
      t.string :email,              :null => false, :default => ""
      t.string :name,              :null => false, :default => ""
      t.boolean :is_instructor,     :null => false, :default => false
      t.float :grade,               :default => "0"
      t.string :status,             :default => "null"

      t.timestamps
    end
  end
end

class Assignment < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :assignment
end