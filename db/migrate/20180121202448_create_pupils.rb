class CreatePupils < ActiveRecord::Migration[5.1]
  def up
    create_table :pupils do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "classroom"
      t.string "is_active"
      t.string "monday"
      t.string "tuesday"
      t.string "wednesday"
      t.string "thursday"
      t.string "friday"
      t.timestamps
    end
  end

  def down
    drop_table :pupils
  end
end
