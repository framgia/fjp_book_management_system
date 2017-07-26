class Category < ApplicationRecord
  belongs_to :parent_category, class_name: Category.name,
    foreign_key: :parent_id, optional: true
  has_many :book_categories
  has_many :books, through: :book_categories, dependent: :destroy
  has_many :child_categories, class_name: Category.name, foreign_key: :parent_id

  scope :group_categories, ->{where parent_id: nil}

  def total_books
    if self.parent_category
      self.book_categories.size
    else
      categories_total_books
    end
  end

  private
  def categories_total_books
    count = 0
    child_categories.joins(:books)
      .select("categories.id, categories.title, count(books.id) as count")
      .group("categories.id")
      .map{|c| count += c.count}
    count
  end
end
