class Image < ApplicationRecord
  belongs_to :target, polymorphic: true
end
