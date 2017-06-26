class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.string :reply_user
      t.text :body
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
