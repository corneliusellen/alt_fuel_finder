class SearchByZip
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def run
    conn = Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json")
    response = conn.get do |req|
      req.params['api_key'] = 'v3SKH6Rutvq7yuQ76QWj7fQSxTw8RcBMsc79SFch'
      req.params['fuel_type'] = 'ELEC,LPG'
      req.params['location'] = @zip_code
      req.params['radius'] = '6'
      req.params['limit'] = '10'
    end
    JSON.parse(response.body)
  end
end
