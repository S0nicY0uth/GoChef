class Photo < ApplicationRecord
  belongs_to :user, optional: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default_image.png"
  do_not_validate_attachment_file_type :image

  def random_heights(array)
    array.shuffle.first
  end
end
