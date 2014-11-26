class AddAvatarToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :avatar, :string
  end
end
