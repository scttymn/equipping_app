class CreateFamilyMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :family_members do |t|
      t.references :person, null: false, foreign_key: true
      t.references :family, null: false, foreign_key: true
      t.boolean :is_parent

      t.timestamps
    end
  end
end
