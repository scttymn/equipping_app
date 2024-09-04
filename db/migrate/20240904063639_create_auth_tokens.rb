class CreateAuthTokens < ActiveRecord::Migration[7.2]
  def change
    create_table :auth_tokens do |t|
      t.references :person, null: false, foreign_key: true
      t.string :token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
