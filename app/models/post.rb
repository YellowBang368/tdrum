class Post < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploaders :preview_image, ImageUploader
  mount_uploaders :header_image, ImageUploader
  serialize :topic, Array

  validates :title, presence: true
  #before_save :remove_first_topic

  def topic_enum
    ["техпроцесс", "как играть", "эффекты", "интерактивный инструмент"]
  end

  # First elem in colors array is always blank
  def remove_first_topic
    topic.shift
  end
end
