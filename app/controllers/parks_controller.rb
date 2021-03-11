class ParksController < ApplicationController
  def index
    @parks = Park.ordered_by_trees
  end

  def show
    @park = Park.find(params[:id])
  end
end
