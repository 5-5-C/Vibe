class ProfilePicture < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :profile_picture, :string
  end
end
