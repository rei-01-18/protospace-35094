class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :user_id, foreign_key: true
      t.integer :prototype_id, foreign_key: true
      t.timestamps
    end
  end
end
