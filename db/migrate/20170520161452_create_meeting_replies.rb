class CreateMeetingReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :meeting_replies do |t|
      t.string :reply_user
      t.text :body
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
