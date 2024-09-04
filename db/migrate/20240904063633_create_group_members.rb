class CreateGroupMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :group_members do |t|
      t.references :person, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.boolean :is_leader

      t.timestamps
    end
  end
end
