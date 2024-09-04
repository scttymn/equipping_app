class CreatePaths < ActiveRecord::Migration[7.2]
  def change
    create_table :paths do |t|
      t.string :name
      t.text :description
      t.references :created_by, polymorphic: true, null: false

      t.timestamps
    end
  end
end
