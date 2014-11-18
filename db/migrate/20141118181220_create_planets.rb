class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :mass
      t.string :diameter
      t.string :density
      t.string :gravity
      t.string :escape_velocity
      t.string :rotation_period
      t.string :day_lenght
      t.string :distance_from_sun
      t.string :perihelion
      t.string :aphelion
      t.string :orbital_period
      t.string :orbital_velocity
      t.string :orbital_Inclination
      t.string :axis_inclination
      t.string :weight
      t.string :temperature
      t.string :surface_pressure
      t.string :atmospheric_composition
      t.string :satellite
      t.string :ring

      t.timestamps
    end
  end
end
