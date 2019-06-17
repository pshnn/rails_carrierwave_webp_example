# Rails CarrierWave WebP image encoding example

This is a simple Rails app that shows how to convert images to WebP format using CarrierWave and WebP-ffi (libwebp wrapper written in Ruby).

## Note
If you need to convert image without using CarrierWave versions you can use same method without rewriting #full_filename method. So your uploader will look something like this:
```ruby
class PostImageUploader < CarrierWave::Uploader::Base
  include WebPConverter

  storage :file

  process convert_to_webp: [{ quality: 80, method: 5 }]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
```
