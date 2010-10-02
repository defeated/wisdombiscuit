class FortunesController < ApplicationController
  
  def index
    @fortunes = Fortune.all
  end
  
  def random
    random = rand(Fortune.count)
    @fortune = Fortune.limit(1).offset(random).first
  end

end
