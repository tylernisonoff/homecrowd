require 'verbs'
module ApplicationHelper
  def student?
    return false if !user_signed_in?
    "Student".eql?(current_user.type)
  end

  def past(a_verb)
    a_verb.verb.conjugate tense: :past, aspect: :perfective
  end

end
