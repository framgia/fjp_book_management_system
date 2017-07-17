class Image < ApplicationRecord
  mount_uploader :url, PhotoUploader
  belongs_to :target, polymorphic: true
end
