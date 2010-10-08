class FortunesController < ApplicationController
  respond_to :html, :xml, :json
  
  before_filter do |controller|
    return if controller.action_name == 'random' && request.format == 'html'
    authenticate_user!
  end

  def index
    @fortunes = Fortune.all
    respond_with(@fortunes)
  end
  
  def new
    @fortune = Fortune.new
    respond_with(@fortune)
  end
  
  def edit
    @fortune = Fortune.find(params[:id])
    respond_with(@fortune)
  end
  
  def create
    @fortune = Fortune.new(params[:fortune])
    flash[:notice] = "Fortune successfully created." if @fortune.save
    respond_with(@fortune)
  end
  
  def show
    @fortune = Fortune.find(params[:id])
    respond_with(@fortune)
  end
  
  def update
    @fortune = Fortune.find(params[:id])
    flash[:notice] = "Fortune successfully updated." if @fortune.update_attributes(params[:fortune])
    respond_with(@fortune)
  end
  
  def destroy
    @fortune = Fortune.find(params[:id])
    flash[:notice] = "Fortune successfully destroyed." if @fortune.destroy
    respond_with(@fortune)
  end
  
  def random
    @fortune = Fortune.random
    flash.now[:alert] = "No fortunes found" unless @fortune

    respond_with(@fortune) do |format|
      format.xml { render :xml => @fortune.to_xml(:only => :text) }
      format.json { render :json => @fortune.to_json(:only => :text) }
    end
  end

end
