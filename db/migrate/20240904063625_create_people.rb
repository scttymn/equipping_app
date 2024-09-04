class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.integer :gender
      t.date :date_of_birth
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
