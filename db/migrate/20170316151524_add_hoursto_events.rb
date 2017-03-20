class AddHourstoEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :hours, :integer
  end
end
