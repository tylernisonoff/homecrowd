class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :type, :score
  # attr_accessible :title, :body
  #has_and_belongs_to_many :classrooms

  has_many :study_guides

  has_many :user_actions

  def student?
    self.type.eql? "Student"
  end
end
