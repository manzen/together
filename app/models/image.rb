class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  mount_base64_uploader :file, ImageUploader

  def image_url
    file&.url
  end
end
