class CreateClaps < ActiveRecord::Migration[5.2]
  def change
    create_table :claps do |t|
      t.integer :clapper_id, null: false
      t.integer :story_id, null: false

      t.timestamps
    end

    add_index :claps, :clapper_id, unique: true
    add_index :claps, :story_id, unique: true
  end
end
