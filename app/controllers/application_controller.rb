class ApplicationController < ActionController::Base
  protect_from_forgery

  def save_action(action_type, object)
    if user_signed_in?
      action = UserAction.new(
        action_type: action_type, obj_type: object.class.to_s,
        obj_id: object.id)
      action.save
    end
  end
end
