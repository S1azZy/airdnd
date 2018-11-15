class CreateSocialAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :social_accounts do |t|
      t.references :user, foreign_key: true, null: false, index: true
      t.references :authentication_provider, foreign_key: true, null: false, index: true

      t.string :token
      t.string :secret

      t.timestamps null: false
    end
  end
end
