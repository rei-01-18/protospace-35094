class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :profile, :text
    add_column :users, :posision, :text
    add_column :users, :occupation, :text
  end
end
