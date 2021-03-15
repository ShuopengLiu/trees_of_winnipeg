class TreesController < ApplicationController
  include Pagy::Backend
  def index
    @pagy, @trees = pagy(Tree.all)
  end

  def show
    @tree = Tree.find(params[:id])
  end
end
