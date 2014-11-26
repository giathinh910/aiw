class AddNameToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :name, :string
  end
end
