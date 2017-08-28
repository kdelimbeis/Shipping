class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.integer :capacity
      t.string :location
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
