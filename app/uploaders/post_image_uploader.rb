# frozen_string_literal: true

# Manages uploading of post images
class PostImageUploader < CarrierWave::Uploader::Base
  include WebPConverter

  storage :file

  version :webp do
    process convert_to_webp: [{ quality: 80, method: 5 }]

    def full_filename(file)
      return file if file.split('.').last == 'webp'

      file + '.webp'
    end
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
