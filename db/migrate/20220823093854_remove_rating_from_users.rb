class RemoveRatingFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :rating, :float
  end
end
