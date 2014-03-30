class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :type, :score, :first_name, :last_name
  # attr_accessible :title, :body
  #has_and_belongs_to_many :classrooms

  has_many :study_guides

  has_many :user_actions

  has_many :achievements

  def student?
    type.eql? "Student"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def name_and_initial
    "#{first_name} #{last_name[0,1]}."
  end
end
