class HubFile < ApplicationRecord
    mount_uploader :myfile, ImageUploader
end
