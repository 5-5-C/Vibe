class CreateTimeSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :time_slots do |t|
      t.date :date
      t.time :time
      t.integer :capacity

      t.timestamps
    end
  end
end
