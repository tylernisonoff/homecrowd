class Subject < ActiveRecord::Base
  has_many :classrooms
  attr_accessible :name

  validates :name, presence: true
end
