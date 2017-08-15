class NotificationsController < ApplicationController
  def index
    @notifications = Notification.page(params[:page])
      .per Settings.notifications.per_page
  end
end
