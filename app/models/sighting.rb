class Sighting <ActiveRecord::Base
  belongs_to :specie
  belongs_to :region

  def description
    region_name = Region.find(self.region_id.to_i).name
    description = "Region: #{region_name} start_date: #{self.start_date} - end_date: #{self.end_date} Latitude: #{self.lat} Longitude: #{self.long}"
    description
  end
end
