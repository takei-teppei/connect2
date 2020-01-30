class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :resume

  validates :iamge,               presence: true
end
