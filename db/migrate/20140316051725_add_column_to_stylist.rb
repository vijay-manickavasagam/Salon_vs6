class AddColumnToStylist < ActiveRecord::Migration
  def change
  	add_column :stylists, :salon_id, :string
  end
end
