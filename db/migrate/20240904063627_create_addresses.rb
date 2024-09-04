class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :city_or_town
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :region
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
