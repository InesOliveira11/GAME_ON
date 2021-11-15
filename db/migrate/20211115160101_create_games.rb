class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :console
      t.float :price
      t.float :rating

      t.timestamps
    end
  end
end
