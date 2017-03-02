class Adduserattributes < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :region, :integer
    add_column :users, :volunteer_position, :integer
    add_column :users, :date_of_birth, :date

  end
end
