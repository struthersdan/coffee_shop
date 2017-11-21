class Page < ApplicationRecord
    mount_uploader :image, ImageUploader
end
