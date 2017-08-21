class Image < ApplicationRecord
  mount_uploader :url, PhotoUploader, allow_destroy: true
  belongs_to :target, polymorphic: true, optional: true
end
