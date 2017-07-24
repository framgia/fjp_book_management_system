class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :series, optional: true
  belongs_to :language

  has_many :images, as: :target
  has_many :suggest_books
  has_many :rates
  has_many :borrows
  has_many :book_items
  has_many :author_books
  has_many :book_tags
  has_many :ebooks
  has_many :book_categories
  has_many :comments, as: :target
  has_many :blog_books
  has_many :authors, through: :author_books, dependent: :destroy
  has_many :categories, through: :book_categories, dependent: :destroy
  has_many :blogs, through: :blog_books
  has_many :tags, through: :book_tags
  has_and_belongs_to_many :tags, join_table: :book_tags

  in_category = lambda do |category_id = nil|
    return unless category_id
    joins(:book_categories).where book_categories: {category_id: category_id}
  end
  by_author = lambda do |author_id = nil|
    return unless author_id
    joins(:author_books).where author_books: {author_id: author_id}
  end
  by_publisher = lambda do |publisher_id = nil|
    return unless publisher_id
    where publisher_id: publisher_id
  end
  scope :in_category, in_category
  scope :by_author, by_author
  scope :by_publisher, by_publisher

  def find_same_author_book
    AuthorBook.where(author_id: self.authors).pluck :book_id
  end

  def find_related_book
    Book.where(id: self.find_same_author_book)
      .or Book.where series_id: self.series_id
  end

  def parent_comments
    comments.where(parent_id: 0).order id: :desc
  end
end
