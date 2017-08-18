class MakeAllAsReadController < ApplicationController
  def update
    unread = current_user.notifications.where read: false

    unread.each do |noti|
      noti.update_attributes read: true
    end

    redirect_back fallback_location: notifications_path
  end
end
