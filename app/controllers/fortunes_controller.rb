class FortunesController < ApplicationController
  
  def index
    @fortunes = Fortune.all
  end
  
  def random
    @fortune = Fortune.random
  end

end
