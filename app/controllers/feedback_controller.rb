class FeedbackController < ApplicationController
  def create
    feedback = Feedback.new
    params[:feedback][:user_id] = current_user.id

    return if feedback.update_attributes feedback_params
    flash[:danger] = t "feedback.danger"
  end

  def update
    feedback = find_feedback
    update_feedback = feedback.update_attributes state: "canceled"
    flash[:danger] = t "borrow.destroy.fail" unless update_feedback

    respond_to do |f|
      link = "users/_feedback_row"
      f.html{render link, layout: false, locals: {feedback: feedback}}
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit :content, :user_id
  end

  def find_feedback
    Feedback.find_by id: params[:id]
  end
end
