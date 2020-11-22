class AddUserIdToFrendy < ActiveRecord::Migration[5.2]
  def change
    add_column :frendies, :user_id, :integer
    add_index :frendies, :user_id
  end
end
