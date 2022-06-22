class AddImageNameToChampions < ActiveRecord::Migration[7.0]
  def change
    add_column :champions, :image_name, :string
  end
end
