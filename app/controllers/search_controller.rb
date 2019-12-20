class SearchController < ApplicationController
  def index
    binding.pry
    render locals: {fuel_facade: FuelFacade.new(params['location'])}
  end
end
