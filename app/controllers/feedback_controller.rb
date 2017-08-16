class FeedbackController < ApplicationController
  def create
    feedback = Feedback.new
    params[:feedback][:user_id] = current_user.id

    return if feedback.update_attributes feedback_params
    flash[:danger] = t "feedback.danger"
  end

  private
  def feedback_params
    params.require(:feedback).permit :content, :user_id
  end
end
