class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.timestamps
      t.string :image
    end
  end
end
