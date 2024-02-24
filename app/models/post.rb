class Post < ApplicationRecord
  has_one_attached :image

    def image_webp_variant
      image.variant(
        format: :webp,
        resize_to_limit: [100, 100],
        saver: { 
            subsample_mode: "on", 
            strip: true, 
            interlace: true, 
            lossless: false,
            quality: 80 }).processed
    end
end
