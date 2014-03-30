module UserActionsHelper
  def do_view_study_guide(study_guide)
    reward = study_guide.classroom.incentive_scheme.view_guide_score
    current_user.score += reward
    current_user.save!

    count = current_user.user_actions.where(
      action_type: :view, obj_type: :StudyGuide).count
    level = Math.log(count, 10)
    if level > 2
      if count % 100 == 0
        achievement_name = "#{count} Study Guides Viewed"
        achievement = Achievement.new(name: achievement_name)
        achievement.user = current_user
        achievement.save
        flash[:success] = "You earned the achievement: #{achievement_name}. Congrats!"
      end
    else
      if level.to_i == level
        achievement_name = "#{count} Study Guides Viewed"
        achievement = Achievement.new(name: achievement_name)
        achievement.user = current_user
        achievement.save
        flash[:success] = "You earned the achievement: #{achievement_name}. Congrats!"
      end
    end
  end

  def do_create_study_guide(study_guide)
    reward = study_guide.classroom.incentive_scheme.create_guide_score
    current_user.score += reward
    current_user.save!
  end
end
