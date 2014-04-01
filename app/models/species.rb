class Species < ActiveRecord::Base
  validates :name, :presence => true
  has_many :sightings, :foreign_key => :specie_id
end
