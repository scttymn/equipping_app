class CreateSteps < ActiveRecord::Migration[7.2]
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.string :category
      t.references :path, null: false, foreign_key: true
      t.text :resources

      t.timestamps
    end
  end
end
