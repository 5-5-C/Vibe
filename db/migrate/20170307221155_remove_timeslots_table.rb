class RemoveTimeslotsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :timeslots
    drop_table :user_timeslots

  end
end
