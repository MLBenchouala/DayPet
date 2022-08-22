class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :comment
      t.integer :rate
      t.integer :booking_id

      t.timestamps
    end
  end
end
