class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.references :messageable, polymorphic: true, null: false
      t.references :parent_message, null: false, foreign_key: true
      t.references :sender, null: false, foreign_key: true
      t.text :content
      t.integer :reply_type

      t.timestamps
    end
  end
end
