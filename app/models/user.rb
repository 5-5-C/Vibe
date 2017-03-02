class User < ApplicationRecord
  has_many :time_slots
  has_many :events, through: :time_slots

  has_secure_password

  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  has_attached_file :picture, styles: {thumbnail: ["10x10#", :png, :jpeg, :jpg]}
 # validates_attachment :picture,  content_type: ["image/jpeg", "image/gif", "image/png"]

end
