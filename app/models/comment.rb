class Comment < ApplicationRecord
  before_destroy :delete_safe

  belongs_to :user
  belongs_to :target, polymorphic: true

  has_many :votes, as: :target

  def load_children
    Comment.where(parent_id: self.id).order id: :asc
  end

  def has_child?
    return false if self.load_children.blank?
    true
  end

  private
  def delete_safe
    self.load_children.map &:destroy if self.has_child?
  end
end
