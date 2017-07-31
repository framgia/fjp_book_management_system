module StaticPagesHelper
  def random_background id
    case id % 6
    when 0
      "book-background-0"
    when 1
      "book-background-1"
    when 2
      "book-background-2"
    when 3
      "book-background-3"
    when 4
      "book-background-4"
    when 5
      "book-background-5"
    else
      "book-background-default"
    end
  end
end
