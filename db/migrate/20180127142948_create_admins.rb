class CreateAdmins < ActiveRecord::Migration[5.1]
  def up
    create_table :admins do |t|
      t.integer (:admin_id)
      t.references :users

      t.timestamps
    end
  end
  def down
    drop_table(:admins)
  end
end
