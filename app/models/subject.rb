class Subject < ActiveRecord::Base
  has_many :classrooms
  attr_accessible :name
end