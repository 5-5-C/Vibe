class AddOrganizationColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :image_url, :string
  end
end
