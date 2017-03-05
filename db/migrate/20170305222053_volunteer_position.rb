class VolunteerPosition < ActiveRecord::Migration[5.0]
  def change
    remove_column :organizations, :volunteer_position, :string
  end
end
