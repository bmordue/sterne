class AddEmailUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :players, :email, :unique => true
  end

  def down
    remove_index :players, :email
  end
end
