class ApplicationController < ActionController::Base
  include UserActionsHelper
  protect_from_forgery

  def save_action(action_type, object)
    if user_signed_in?
      action = UserAction.new(
        action_type: action_type, obj_type: object.class.to_s,
        obj_id: object.id)
      if action.save
        if self.respond_to? action_trigger_method(action_type, object.class)
          self.send(action_trigger_method(action_type, object.class), object)
        end
      end
    end
  end

  def action_trigger_method(action_type, klass)
    "do_#{action_type}_#{klass.to_s.downcase}"
  end
end
