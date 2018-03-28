class StationsByZip

  def self.find_by(zip_code)
    SearchByZip.new(zip_code).run["fuel_stations"].map do |station_info|
      Station.new(station_info)
    end
  end
  
end
