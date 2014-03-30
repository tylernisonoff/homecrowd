require 'verbs'
class UserAction < ActiveRecord::Base
  attr_accessible :action_type, :obj_id, :obj_type, :user

  belongs_to :user

  def to_s
    action = action_type.verb.conjugate tense: :past, aspect: :perfective
    "#{user.email} #{action_type} #{obj_type.underscore.sub('_', ' ')}"
  end
end
