class RemoveClapsIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :claps, name: "index_claps_on_clapper_id"
  end
end
