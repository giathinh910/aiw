class Satellite < ActiveRecord::Base
  belongs_to :planet
  validates_presence_of :name, :planet_id, :year_discovered, :discoverer, :distance_from_planet, :orbital_period, :avatar, :detail
end
