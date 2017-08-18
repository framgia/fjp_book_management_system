class NotificationsController < ApplicationController
  before_action :find_notification, only: :update
  def index
    @notifications = Notification.order(id: :desc).page(params[:page])
      .per Settings.notifications.per_page
  end

  def update
    @notify.update_attributes read: true
    render json: {unread: unread_notifications_count}
  end

  private
  def find_notification
    @notify = current_user.notifications.find_by id: params[:id]
  end

  def unread_notifications_count
    current_user.notifications.where(read: false).size
  end
end
