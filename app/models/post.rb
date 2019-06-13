# frozen_string_literal: true

# Represents simple post with title, body and image
class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader
end
