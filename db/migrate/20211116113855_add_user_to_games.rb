class AddUserToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :user_id, :bigint
    add_foreign_key :games, :users
  end
end
