class ChangeTeachers2 < ActiveRecord::Migration[5.1]
  def up
    remove_column :teachers, :user_id, :string
    remove_column :teachers, :classroom, :string
    remove_column :teachers, :classrooms_id, :integer

  end

  def down
  end
end
