class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Choose what kind of storage to use for this uploader:
end
