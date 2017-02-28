class Changeinteger < ActiveRecord::Migration[5.0]

  def change
    reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :region, :string }
        dir.down { t.change :region, :integer }
      end
    end
  end
end 
