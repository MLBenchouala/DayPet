class RemoveBookingIdFromRatings < ActiveRecord::Migration[7.0]
  def change
    remove_column :ratings, :booking_id, :integer
  end
end
