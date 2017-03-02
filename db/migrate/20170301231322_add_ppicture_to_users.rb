class AddPpictureToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ppicture, :string




  File.open('somewhere') do |f|
    user.ppicture = f
  end
end
