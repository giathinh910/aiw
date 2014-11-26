class AddAvatarAndDetailToPlanet < ActiveRecord::Migration
  def change
    add_column :planets, :avatar, :string
    add_column :planets, :detail, :string
  end
end
