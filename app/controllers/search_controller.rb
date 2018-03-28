class SearchController < ApplicationController
  def index
    @stations = Station.find_by_zip(params[:q])
  end
end
