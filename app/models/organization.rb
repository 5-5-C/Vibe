class Organization < ApplicationRecord
  has_many :events
  has_many :users, through: :events

  # belongs_to :users
end

  def create_event
    render form_for @event
  end
