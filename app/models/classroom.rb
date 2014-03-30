class Classroom < ActiveRecord::Base
  attr_accessible :name, :subject_id
  has_one :incentive_scheme, dependent: :destroy
  belongs_to :subject
  accepts_nested_attributes_for :incentive_scheme
  accepts_nested_attributes_for :subject
  has_many :teachers
  has_many :students
  belongs_to :subject
  has_and_belongs_to_many :users
end
