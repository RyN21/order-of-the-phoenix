class SearchController < ApplicationController
  def index
    @house = params[:house]
    house_results = HouseResults.new
    @members = house_results.phoenix_members_of_house(@house)
  end
end
