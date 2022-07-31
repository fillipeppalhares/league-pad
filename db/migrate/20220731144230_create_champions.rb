class CreateChampions < ActiveRecord::Migration[7.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :key
      t.string :moniker
      t.string :image_endpath
      t.string :title

      t.timestamps
    end
  end
end
