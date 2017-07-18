class Book < ApplicationRecord
  belongs_to :publisher, optional: true
  belongs_to :series, optional: true
  belongs_to :language, optional: true

  has_many :images, as: :target
  has_many :suggest_books
  has_many :rates
  has_many :borrows
  has_many :book_items, dependent: :destroy
  has_many :author_books
  has_many :book_tags
  has_many :ebooks, dependent: :destroy
  has_many :book_categories
  has_many :comments, as: :target
  has_many :blog_books
  has_many :authors, through: :author_books, dependent: :destroy
  has_many :categories, through: :book_categories, dependent: :destroy
  has_many :blogs, through: :blog_books
  has_many :tags, through: :book_tags
  has_and_belongs_to_many :tags, join_table: :book_tags

  accepts_nested_attributes_for :publisher
  accepts_nested_attributes_for :series
  accepts_nested_attributes_for :images

  validates :title, presence: true

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
