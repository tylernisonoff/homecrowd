class Classroom < ActiveRecord::Base
  attr_accessible :name, :subject_id
  has_one :incentive_scheme
  has_many :users, as: :teachers
  has_many :users, as: :students
end
