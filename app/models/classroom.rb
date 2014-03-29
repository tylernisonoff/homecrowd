class Classroom < ActiveRecord::Base
  attr_accessible :name, :subject_id
  has_one :incentive_scheme
end
