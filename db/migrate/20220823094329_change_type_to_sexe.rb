class ChangeTypeToSexe < ActiveRecord::Migration[7.0]
  def change
    rename_column :pets, :type, :sexe
  end
end
