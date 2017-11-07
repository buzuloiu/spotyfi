class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|

      t.string :title, null: false
      t.integer :artist_id, null: false
      t.integer :album_id, null: false
      t.bigint :plays
      t.integer :genre_id, null: false
      t.text :file, null: false

      t.timestamps
    end
  end
end
