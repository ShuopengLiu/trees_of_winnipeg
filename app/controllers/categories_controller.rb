class CategoriesController < ApplicationController
  def index
    @categories = Category.ordered_by_trees
  end

  def show
    @category = Category.find(params[:id])
  end
end
