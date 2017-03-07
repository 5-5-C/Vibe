class Organization < ApplicationRecord
  has_many :events
  belongs_to :users
end

  def create_event
    render form_for @event
  end
