class HomeController < ApplicationController
  def index
    @trees = Tree.order("diameter DESC").limit(20)
  end
end
