# frozen_string_literal: true

# Used for image encoding in CarrierWave uploaders
module WebPConverter
  def convert_to_webp(options = {})
    webp_path = "#{path}.webp"

    WebP.encode(path, webp_path, options)

    @filename = webp_path.split('/').pop

    @file = CarrierWave::SanitizedFile.new(
      tempfile: webp_path,
      filename: webp_path,
      content_type: 'image/webp'
    )
  end
end
