class CreateGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.references :created_by, polymorphic: true, null: false
      t.references :step, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :is_private

      t.timestamps
    end
  end
end
