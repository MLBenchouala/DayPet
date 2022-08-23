class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :ratings, :Pet_id, :pet_id
  end
end
