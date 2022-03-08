class RemoveStorysaves < ActiveRecord::Migration[5.2]
  def change
    drop_table :storysaves
  end
end
