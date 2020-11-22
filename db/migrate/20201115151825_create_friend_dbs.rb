class CreateFriendDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_dbs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
