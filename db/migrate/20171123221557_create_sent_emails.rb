class CreateSentEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :sent_emails do |t|
      t.date :date
      t.string :sender
      t.string :recipient
      t.string :type
      t.string :subject
      t.text :content
      t.integer :notification_id
      t.string :notification_type

      t.timestamps
    end
  end
end
