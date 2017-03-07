class RenameOrgTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :organization, :org_admin
  end
end
