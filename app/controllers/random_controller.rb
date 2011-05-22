class RandomController < ApplicationController
  
  def index
    @fortune = Fortune.random
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @fortune.to_xml(:only => :text) }
      format.json { render :json => @fortune.to_json(:only => :text) }
      format.text { render :text => @fortune.text }
    end
  end

end
