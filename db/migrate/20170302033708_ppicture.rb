class Ppicture < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :ppicture, :string
  end
end
