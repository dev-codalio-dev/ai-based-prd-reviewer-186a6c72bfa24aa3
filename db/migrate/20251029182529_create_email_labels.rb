class CreateEmailLabels < ActiveRecord::Migration[7.2]
  def change
    create_table :email_labels do |t|
      t.references :email, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps
    end
    add_index :email_labels, [ :email_id, :label_id ], unique: true
  end
end
