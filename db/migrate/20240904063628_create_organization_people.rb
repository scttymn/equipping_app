class CreateOrganizationPeople < ActiveRecord::Migration[7.2]
  def change
    create_table :organization_people do |t|
      t.references :person, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
