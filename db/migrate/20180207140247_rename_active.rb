class RenameActive < ActiveRecord::Migration[5.1]
  def up
    rename_table :actives, :actuals
  end

  def down
    rename_table :actuals, :actives
  end
end
