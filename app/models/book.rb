class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :series
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

  has_and_belongs_to_many :tags, join_table: :book_tags

  def find_same_author_book
    AuthorBook.where(author_id: self.authors).pluck :book_id
  end

  def find_related_book
    Book.where(id: self.find_same_author_book).or Book.where series_id: self.series_id
  end
end
