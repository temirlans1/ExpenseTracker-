class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password_digest
      t.string :remember_digest
      t.string :provider
      t.string :uid
      t.timestamps
    end
    add_index :users, :email
    add_index :users, :username
  end
end
