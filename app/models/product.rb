class Product < ApplicationRecord
  mount_uploader :foto, FotoUploader
end
