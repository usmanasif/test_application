class Gif < ApplicationRecord
  mount_uploader :file, AvatarUploader

  belongs_to :user

  validate :image_size_validation

  private

  def image_size_validation
    errors.add(:base, 'GIF should be less than 1MB') if file.size > 1.megabytes
  end
end
