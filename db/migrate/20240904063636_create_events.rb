class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.string :recurrence_rule
      t.integer :recurrence_frequency
      t.date :recurrence_end_date
      t.datetime :postponed_until

      t.timestamps
    end
  end
end
