class SearchController < ApplicationController
  def index
    @stations = StationsByZip.find_by(params[:q])
  end
end
