class AddPasswordDigestToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :pasword_digest, :string
  end
end
