class User < ApplicationRecord

  has_and_belongs_to_many :events
  has_one :organization

  has_secure_password
  # validates_presence_of :first_name, :last_name, :email, :password_digest, presence: true
  # validates_presence_of :first_name, :last_name, :email, uniqueness: true
  validates :email, :password_digest, presence: true
  # validates :email, uniqueness: true

  validates_presence_of :first_name, :last_name, :date_of_birth, :goals, :skills,  on: :update


  SKILLS = ["","Administrative", "Analytical", "Artistic/Creative", "Budgeting",
  "Communicaton", "Computer", "Conflict Resolution", "Creating Ideas",
  "Creating Procedures", "Creating New Solutions", "Customer Service",
  "Decision Making", "Fundraising", "Handling Complaints", "Innovative",
  "Leadership", "Learning", "Logical Thinking", "Maintaining High Levels of Activity",
  "Negotiating", "Networking", "Organizational", "Planning", "Problem Solving",
  "Reporting", "Team Work", "Technical", "Time Management", "Training"]


  REGIONS = ["", "Annex", "Beaches", "Bloor West", "Danforth", "Downtown", "Etobicoke", "Midtown", "North York", "Scarborough"]

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

  def all_skills
    skill = Skill.select(params)
    current_user.skills << skills
  end


  def a_method_used_for_validation_purposes
      errors.add(:name, "You need a name!")
  end
