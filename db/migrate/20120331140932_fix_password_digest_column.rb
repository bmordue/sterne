class FixPasswordDigestColumn < ActiveRecord::Migration
  def up
    rename_column :players, :pasword_digest, :password_digest
  end

  def down
    rename_column :players, :password_digest, :pasword_digest
  end
end
