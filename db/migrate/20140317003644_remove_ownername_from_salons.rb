class RemoveOwnernameFromSalons < ActiveRecord::Migration
  def change
        remove_column :salons, :owner_name
  end
end
