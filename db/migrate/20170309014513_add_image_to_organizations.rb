class AddImageToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :imageURL, :string
  end
end
