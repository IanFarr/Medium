class EditSavedStoriesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :storysaves, :saver_id, :user_id
    rename_column :storysaves, :saved_story_id, :story_id
  end
end
