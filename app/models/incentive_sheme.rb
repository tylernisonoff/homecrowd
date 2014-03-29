class IncentiveSheme < ActiveRecord::Base
  attr_accessible :classroom_id
  belongs_to :classroom
end
