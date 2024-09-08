class CreateCotfcGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :cotfc_groups do |t|
      t.string :host
      t.string :subject
      t.string :day
      t.string :time
      t.string :location
      t.boolean :child_friendly
      t.string :intended_audience
      t.string :form_url
      t.string :photo_url
      t.text :description

      t.timestamps
    end
  end
end
