class ChangeTeachers < ActiveRecord::Migration[5.1]
  def up
    change_table :teachers do |t|
      t.references :classrooms
      t.string "first_name"
      t.string "last_name"
      t.string "username"
      t.string "password"
      t.integer "classroom_id"

    end

  end

  def down
    remove_column :first_name, :classroom_id, :username, :password, :classroom_id
  end
end
