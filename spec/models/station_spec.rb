require 'rails_helper'

describe Station do
  it "creates stations with all attributes" do
    contents = File.read("./spec/fixtures/station_sample.json")
    json = JSON.parse(contents)
    station = Station.new(json)

    expect(station.name).to eq("GRAND PEAKS")
    expect(station.address).to eq("2424 W Caithness Pl")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.distance).to eq(0.51121)
    expect(station.access_times).to eq("24 hours daily")
  end
end
