class Saves < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.integer :user_id, null: false
      t.integer :story_id, null: false

      t.timestamps
    end

    add_index :lists, :user_id
    add_index :lists, :story_id
    add_index :lists, [:story_id, :user_id], unique: true
  end
end
