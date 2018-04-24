class Photo < ApplicationRecord
  before_save :destroy_image?
  belongs_to :user, optional: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default_image.png"
  do_not_validate_attachment_file_type :image

  def random_heights(array)
    array.shuffle.first
  end

  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

  private
  def destroy_image?
    self.image.clear if @image_delete == "1"
  end
end
