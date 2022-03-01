class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :tags, array: true, default: []
      t.string :author, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :stories, :title
    add_index :stories, :author_id
  end
end
