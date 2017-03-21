class Organization < ApplicationRecord
  has_many :events
  belongs_to :user

  def create_event
    render form_for @event
  end


  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
