class CreateActives < ActiveRecord::Migration[5.1]
  def up
    create_table :actives do |t|
      t.integer("pupil_id")
      t.date("date")
      t.string("attendance")
      t.string("circumstances")
      t.timestamps
    end
  end

  def down
    drop_table :actives
  end
end
