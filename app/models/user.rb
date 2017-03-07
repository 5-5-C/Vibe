class User < ApplicationRecord
<<<<<<< HEAD
  has_many :events
=======
  has_many :timeslots
  has_many :events, through: :timeslots
  validates_presence_of :hours
>>>>>>> 9357dfdd9a7b32c970a8d27fd8e31937ac255a28
  has_secure_password

# validates :first_name, :last_name, :email, :password_digest, presence: true
# validates :first_name, :last_name, :email, uniqueness: true

  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  def age
    ((Time.now - self.date_of_birth.to_time)/ 1.year ).round
  end

  def age
    ((Time.now - self.date_of_birth.to_time)/ 1.year).round
  end

  # has_attached_file :picture, styles: {thumbnail: ["10x10#"]}
 # validates_attachment :picture,  content_type: ["image/jpeg", "image/gif", "image/png"]
  has_attached_file :picture
  # Validate content type
  validates_attachment_content_type :picture, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :picture, matches: [/png\z/, /jpe?g\z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :picture

end
