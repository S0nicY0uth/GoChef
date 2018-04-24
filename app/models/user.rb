class User < ApplicationRecord
  has_many :photos
  has_and_belongs_to_many :skills
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default_image.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  accepts_nested_attributes_for :photos, :allow_destroy => true

  validates :name, presence: true
  validates :email, presence: true
  validates :location_lat, presence: true
  validates :location_lon, presence: true
  
end
