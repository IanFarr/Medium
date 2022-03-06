class RemoveClapsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :claps
  end
end
