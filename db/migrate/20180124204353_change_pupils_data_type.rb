class ChangePupilsDataType < ActiveRecord::Migration[5.1]

  def up
    change_table :pupils do |t|
      t.references :classrooms
    end
  end


  def down
    remove_column :pupils, :classroom_id
  end
end
