class CreateEmails < ActiveRecord::Migration[7.2]
  def change
    create_table :emails do |t|
      t.string :subject, null: false
      t.text :body, null: false
      t.string :sender, null: false
      t.string :recipient, null: false
      t.boolean :read, default: false, null: false
      t.references :user, null: false, foreign_key: true # The user who owns this email (recipient)
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
