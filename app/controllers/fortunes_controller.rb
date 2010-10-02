class FortunesController < ApplicationController
  
  def index
    @fortunes = Fortune.all
  end
  
  def random
    @fortune = Fortune.random

    if @fortune.nil?
      @fortune = Fortune.new
      flash[:alert] = "No fortunes found"
    end
  end

end
