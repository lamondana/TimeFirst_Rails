class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.string("classroom_name")
      t.integer("teacher_id")
      t.integer("teacher_assistant_id")
      t.timestamps
    end
  end
end
