class CreateGuardianships < ActiveRecord::Migration[7.2]
  def change
    create_table :guardianships do |t|
      t.references :person, null: false, foreign_key: true
      t.references :guardian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
