class User < ApplicationRecord

  has_and_belongs_to_many :events
  has_one :organization

  has_secure_password
  validates :email, :password_digest, presence: true
  # validates :email, uniqueness: true


  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  def age
    ((Time.now - self.date_of_birth.to_time)/ 1.year ).round
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

def a_method_used_for_validation_purposes
    errors.add(:name, "You need a name!")
end




# user = User.new
# user.valid? # => false
# user.errors[:name]
#  ["can't be blank", "is too short (minimum is 3 characters)"]

# user.errors.clear
# user.errors.empty? # => true
#
# user.save # => false
#
# user.errors[:name]
# => ["can't be blank", "is too short (minimum is 3 characters)"]
