class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.integer :user_id, null: false
      t.integer :story_id, null: false

      t.timestamps
    end

    add_index :saves, :user_id
    add_index :saves, :story_id
    add_index :saves, [:story_id, :user_id], unique: true
  end
end
