class Claps < ActiveRecord::Migration[5.2]
  def change
    remove_index :claps, name: "index_claps_on_story_id"
  end
end
