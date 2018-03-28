require 'rails_helper'

describe SearchByZip do
  it "returns json with station inforamtion by zip code" do
    results = SearchByZip.new(60608).run

    expect(results["fuel_stations"].count).to eq(10)
  end
end
