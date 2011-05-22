class RandomController < ApplicationController
  
  respond_to :html, :xml, :json

  def index
    @fortune = Fortune.random
    
    respond_with @fortune do |format|
      format.xml { render :xml => @fortune.to_xml(:only => :text) }
      format.json { render :json => @fortune.to_json(:only => :text) }
    end
  end

end
