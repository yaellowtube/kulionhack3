class Album < ApplicationRecord
    mount_uploader :image, AlbumImageUploader
    has_many :replies, dependent: :destroy
end
