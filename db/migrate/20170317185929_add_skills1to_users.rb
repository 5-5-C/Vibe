class AddSkills1toUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skill1, :string
    add_column :users, :skill2, :string
    add_column :users, :skill3, :string
    add_column :users, :skill4, :string
    add_column :users, :skill5, :string
  end
end
