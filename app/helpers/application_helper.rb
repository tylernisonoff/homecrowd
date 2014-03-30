require 'verbs'
module ApplicationHelper
  def student?
    return false if !user_signed_in?
    "Student".eql?(current_user.type)
  end

  def avatar_url(user, width: 60)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://robohash.org/#{gravatar_id}.png"
  end
end
