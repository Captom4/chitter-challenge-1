class AddPeeps < ActiveRecord::Migration[5.2]
  def change
    create_table :peeps do |t|
      t.text :content
      # t.integer :user_id # the peeps will belong to the users
      t.timestamps null: false
    end
  end
end
