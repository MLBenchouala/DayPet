class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :race
      t.integer :age
      t.string :photo_url
      t.integer :user_id
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
