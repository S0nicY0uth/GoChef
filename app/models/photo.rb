class Photo < ApplicationRecord
  attr_accessor  :image_file_name
  belongs_to :user, optional: true
  has_attached_file :image,
    path: ":rails_root/public/images/:id/:name",
    url: "/images/:id/:filename",
    default_url: "/images/:style/default_image.png"
  do_not_validate_attachment_file_type :image
end
