class FortunesController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :xml, :json

  # GET /fortunes
  # GET /fortunes.xml
  def index
    @fortunes = Fortune.all
    respond_with @fortunes
  end

  # GET /fortunes/1
  # GET /fortunes/1.xml
  def show
    @fortune = Fortune.find(params[:id])
    respond_with @fortune
  end

  # GET /fortunes/new
  # GET /fortunes/new.xml
  def new
    @fortune = Fortune.new
    respond_with @fortune
  end

  # GET /fortunes/1/edit
  def edit
    @fortune = Fortune.find(params[:id])
    respond_with @fortune
  end

  # POST /fortunes
  # POST /fortunes.xml
  def create
    @fortune = Fortune.new(params[:fortune])
    
    if @fortune.save
      flash[:notice] = 'Fortune was successfully created.'
    end
  
    respond_with @fortune
  end

  # PUT /fortunes/1
  # PUT /fortunes/1.xml
  def update
    @fortune = Fortune.find(params[:id])

    if @fortune.update_attributes(params[:fortune])
      flash[:notice] = 'Fortune was successfully updated.'
    end

    respond_with @fortune
  end

  # DELETE /fortunes/1
  # DELETE /fortunes/1.xml
  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy
    flash[:notice] = 'Fortune was successfully destroyed.'
    respond_with @fortune
  end
end
