class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.references :champion, null: false, foreign_key: true
      t.references :adversary_champion, null: false, foreign_key: {to_table: :champions}

      t.timestamps
    end
  end
end
