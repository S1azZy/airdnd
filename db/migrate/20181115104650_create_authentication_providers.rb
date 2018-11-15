class CreateAuthenticationProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :authentication_providers, force: true do |t|
      t.string :name, index: { unique: true }, null: false

      t.timestamps null: false
    end
  end
end
