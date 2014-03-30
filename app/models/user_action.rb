require 'verbs'
class UserAction < ActiveRecord::Base
  attr_accessible :action_type, :obj_id, :obj_type, :user

  belongs_to :user

  def to_s
    action = action_type.verb.conjugate tense: :past, aspect: :perfective
    "#{user.name_and_initial} #{action} #{obj_type.underscore.sub('_', ' ')}"
  end

  def get_obj
    obj_type.constantize.find obj_id
  end
end
