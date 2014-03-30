class UserAction < ActiveRecord::Base
  attr_accessible :action_type, :obj_id, :obj_type, :user_id
end
