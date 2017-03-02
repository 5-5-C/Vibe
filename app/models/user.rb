class User < ApplicationRecord
  has_many :time_slots
  has_many :events, through: :time_slots
  has_secure_password
  REGIONS = ["City of Toronto", "Peel", "Durham", "Halton", "York"]

  def age
    ((Time.now - self.date_of_birth.to_time)/ 1.year ).round
  end

end


# def
# u = User.new
# u.ppicture = params[:file] # Assign a file like this, or
# end

# u.save!
# u.ppicture.url # => '/url/to/file.png'
# u.ppicture.current_path # => 'path/to/file.png'
# u.ppicture_identifieer
