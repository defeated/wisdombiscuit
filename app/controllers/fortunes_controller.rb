class FortunesController < ApplicationController
  
  def index
    @fortunes = Fortune.all
  end

end
