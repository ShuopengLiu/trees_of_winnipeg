class NeighbourhoodsController < ApplicationController
  def index
    @neighbourhoods = Neighbourhood.ordered_by_trees
  end

  def show
    @neighbourhood = Neighbourhood.find(params[:id])
  end
end
