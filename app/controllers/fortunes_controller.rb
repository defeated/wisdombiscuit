class FortunesController < ApplicationController
  
  def index
    @fortunes = Fortune.all
  end
  
  def random
    @fortune = Fortune.random
    flash[:alert] = "No fortunes found" unless @fortune
  end

end
