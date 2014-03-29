class Classroom < ActiveRecord::Base
  attr_accessible :name, :subject_id
  has_one :incentive_scheme, dependent: :destroy
  accepts_nested_attributes_for :incentive_scheme
  has_many :teachers
  has_many :students
  belongs_to :subject
end
