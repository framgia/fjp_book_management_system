class NotificationJob < ApplicationJob
  include ActionView::Helpers::UrlHelper

  queue_as :default

  def perform obj
    routes = Rails.application.routes.url_helpers
    obj_class = obj.class.name
    obj_id = obj.id
    user_id = obj.has_attribute?(:user_id) ? obj.user_id : obj.receiver_id
    object = obj
    case obj_class
    when Borrow.name
      book = obj.book
      book_title = book.title
      book_path = routes.book_path(book)
      i18n = I18n.t("notifications.job.borrow.success").to_s

      Notification.create user_id: user_id,
        content: "#{i18n}
          #{link_to book_title, book_path,
            "data-turbolinks": false}",
        raw: "#{i18n}
          #{book_title}",
        link_to: book_path,
        target: obj_class,
        target_id: obj_id,
        read: false
    when Feedback.name
      i18n = I18n.t("notifications.job.feedback.success").to_s

      Notification.create user_id: user_id,
        content: i18n,
        raw: i18n,
        target: obj_class,
        target_id: obj_id,
        read: false
    when Request.name
      i18n = I18n.t("notifications.job.request.success").to_s

      Notification.create user_id: user_id,
        content: i18n,
        raw: i18n,
        link_to: nil,
        target: obj_class,
        target_id: obj_id,
        read: false
    when SuggestBook.name
      i18n = I18n.t "notifications.job.suggest.has_suggest"
      b = object.book
      b_title = b.title
      b_path = routes.book_path(b)
      sender = obj.sender.name

      Notification.create user_id: user_id,
        content: "#{sender} #{i18n}
        #{link_to b_title, b_path,
          "data-turbolinks": false}",
        raw: "#{sender} #{i18n}
        #{b_title}",
        link_to: b_path,
        target: obj_class,
        target_id: obj_id,
        read: false
    else
      return nil
    end
  end
end
