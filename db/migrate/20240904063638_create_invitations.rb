class CreateInvitations < ActiveRecord::Migration[7.2]
  def change
    create_table :invitations do |t|
      t.string :email
      t.references :invited_by, null: false, foreign_key: true
      t.string :token
      t.string :status
      t.datetime :expires_at
      t.references :invitable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
