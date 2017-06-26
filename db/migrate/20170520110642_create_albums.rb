class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :body
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
