class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :body
      t.string :category

      t.timestamps
    end
  end
end
