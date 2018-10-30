class AddPeeps < ActiveRecord::Migration[5.2]
  def change
    create_table :peeps do |t|
      t.string :title
      t.text :content
      t.integer :author_id # the peep will belong to the user
      t.timestamps null: false
    end
  end
end
