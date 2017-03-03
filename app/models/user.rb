class User < ApplicationRecord
  has_many :timeslots
  has_many :events, through: :timeslots
  has_secure_password
  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  def age
    ((Time.now - self.date_of_birth.to_time)/ 1.year ).round
  end

  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  has_attached_file :picture, styles: {thumbnail: ["10x10#"]}
 # validates_attachment :picture,  content_type: ["image/jpeg", "image/gif", "image/png"]
end


# def
# u = User.new
# u.ppicture = params[:file] # Assign a file like this, or
# end

# u.save!
# u.ppicture.url # => '/url/to/file.png'
# u.ppicture.current_path # => 'path/to/file.png'
# u.ppicture_identifieer
