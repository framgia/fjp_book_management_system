class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :target, polymorphic: true

  has_many :votes, as: :target

  def load_children
    Comment.where parent_id: self.id
  end

  def has_child?
    return false if self.load_children.blank?
    true
  end
end
