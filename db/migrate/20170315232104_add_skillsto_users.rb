class AddSkillstoUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skills, :string
  end
end
