class IncentiveScheme < ActiveRecord::Base
  attr_accessible :classroom_id, :create_guide_score, :update_guide_score,
    :view_guide_score
  belongs_to :classroom
end
