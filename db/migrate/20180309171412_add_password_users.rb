class AddPasswordUsers < ActiveRecord::Migration[5.1]
  def up
    remove_column "teachers", "password"
    add_column "teachers", "password_digest", :string
  end


  def down
    add_column "teachers", "password"
    remove_column "teachers", "password_digest", :string

  end
end
