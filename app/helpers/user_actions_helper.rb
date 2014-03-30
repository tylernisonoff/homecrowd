module UserActionsHelper
  def do_view_study_guide(study_guide)
    reward = study_guide.classroom.incentive_scheme.view_guide_score
    current_user.score += reward
    current_user.save!
  end

  def do_create_study_guide(study_guide)
    reward = study_guide.classroom.incentive_scheme.create_guide_score
    current_user.score += reward
    current_user.save!
  end
end
