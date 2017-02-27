class CreateUserTimeSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :user_time_slots do |t|
      t.integer :user_id
      t.integer :timeslot_id

      t.timestamps
    end
  end
end
