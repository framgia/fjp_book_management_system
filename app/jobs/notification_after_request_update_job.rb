class NotificationAfterRequestUpdateJob < ApplicationJob
  include ActionView::Helpers::UrlHelper

  queue_as :default

  def perform obj
    routes = Rails.application.routes.url_helpers
    obj_class = obj.class.name
    obj_id = obj.id
    user_id = obj.user_id
    notify = Notification.new user_id: user_id,
      content: "",
      raw: "",
      link_to: routes.requests_path,
      target: obj_class,
      target_id: obj_id,
      read: false

    if obj.approved?
      notify.raw = notify.content = I18n.t "notifications.job.request.approved"
    elsif obj.reject?
      notify.raw = notify.content = I18n.t "notifications.job.request.reject"
    else
      notify.raw = notify.content = I18n.t "notifications.job.request.cancel"
    end

    notify.save
  end
end
