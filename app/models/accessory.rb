class Accessory < ApplicationRecord
  mount_uploaders :images, ImageUploader
  validates :title, :price, :images, presence: true

end
