class SearchController < ApplicationController
  def index
    render locals: {fuel_facade: FuelFacade.new(params['location'])}
  end
end
