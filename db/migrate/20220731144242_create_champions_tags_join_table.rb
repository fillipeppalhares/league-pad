class CreateChampionsTagsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :champions, :tags do |t|
      t.index :champion_id
      t.index :tag_id
    end
  end
end
