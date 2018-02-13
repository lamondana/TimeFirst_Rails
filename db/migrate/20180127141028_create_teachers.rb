class CreateTeachers < ActiveRecord::Migration[5.1]
  def up
    create_table :teachers do |t|
      t.references :users
      t.string ("user_id")
      t.string ("classroom")
      t.timestamps
    end

    def down
      drop_table(:teachers)
    end
  end
end
