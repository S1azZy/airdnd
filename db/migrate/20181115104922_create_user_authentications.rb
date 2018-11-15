class CreateUserAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :user_authentications, force: true do |t|
      t.references :user, foreign_key: true, null: false, index: true
      t.references :authentication_provider, foreign_key: true, null: false, index: true
      t.string   :uid
      t.string   :token
      t.datetime :token_expires_at
      t.jsonb    :params

      t.timestamps null: false
    end
  end
end
