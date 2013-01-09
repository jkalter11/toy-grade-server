class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :is_instructor, :email, :password, :password_confirmation
  # attr_accessible :title, :body
end
