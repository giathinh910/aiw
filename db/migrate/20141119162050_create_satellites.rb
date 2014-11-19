class CreateSatellites < ActiveRecord::Migration
  def change
    create_table :satellites do |t|
      t.references :planet, index: true
      t.string :year_discovered
      t.string :discoverer
      t.string :distance_from_planet
      t.string :orbital_period
      t.string :detail

      t.timestamps
    end
  end
end
