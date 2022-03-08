class CreateStorysaves < ActiveRecord::Migration[5.2]
  def change
    create_table :storysaves do |t|
      t.integer :saver_id, null: false
      t.integer :saved_story_id, null: false

      t.timestamps
    end

    add_index :storysaves, :saver_id
    add_index :storysaves, :saved_story_id
    add_index :storysaves, [:saved_story_id, :saver_id], unique: true
  end
end
