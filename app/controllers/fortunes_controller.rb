class FortunesController < ApplicationController
  respond_to :html

  def index
    @fortunes = Fortune.all
  end
  
  def new
    @fortune = Fortune.new
  end
  
  def edit
    @fortune = Fortune.find(params[:id])
  end
  
  def create
    @fortune = Fortune.new(params[:fortune])
    flash[:notice] = "Fortune successfully created." if @fortune.save
    respond_with(@fortune)
  end
  
  def show
    @fortune = Fortune.find(params[:id])
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
  end

end
