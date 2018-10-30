class AddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :hashed_password
      t.string :salt
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
