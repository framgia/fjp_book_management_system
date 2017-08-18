module ApplicationHelper
  def full_title page_title = ""
    base_title = t "app_name"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def find_book id
    @book = Book.find_by id: id
  end

  def markdown content
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      quote: true,
      highlight: true,
      tables: true,
      emoji: true
    }

    Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
      .render content
  end

  def books_sort_params
    [[(t "categories.show.created_at"), "created_at"],
     [(t "categories.show.title"), "title"],
     [(t "categories.show.public_date"), "public_date"]]
  end

  def unread_notifications_count
    current_user.notifications.where(read: false).size
  end

  def my_notifications
    current_user.notifications.order(id: :desc)
      .limit Settings.notifications.header_per_page
  end

  def vote comment
    comment.votes.find_by user_id: current_user.id
  end
end
