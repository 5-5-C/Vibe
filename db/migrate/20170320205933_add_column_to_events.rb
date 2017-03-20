class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :summary, :string
  end
end
