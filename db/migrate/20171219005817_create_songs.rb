class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|

      t.string :title, null: false
      t.string :url, null: false
      t.references :artist, foreign_key: true

      t.timestamps
    end
    add_index :songs, [:artist_id, :created_at]

  end
end
