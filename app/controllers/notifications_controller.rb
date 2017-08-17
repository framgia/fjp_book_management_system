class NotificationsController < ApplicationController
  def index
    @notifications = Notification.order(id: :desc).page(params[:page])
      .per Settings.notifications.per_page
  end
end
