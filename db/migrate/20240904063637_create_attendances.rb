class CreateAttendances < ActiveRecord::Migration[7.2]
  def change
    create_table :attendances do |t|
      t.references :person, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :attended_at

      t.timestamps
    end
  end
end
