require 'verbs'
module ApplicationHelper
  def student?
    return false if !user_signed_in?
    "Student".eql?(current_user.type)
  end
end
