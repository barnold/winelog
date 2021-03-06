class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end
  
  def show
    @wine = Wine.find(params[:id])
  end
  
  def new
    @wine = Wine.new
    5.times { @wine.ingredients.build }
  end
  
  def create
    @wine = Wine.new(params[:wine])
    if @wine.save
      flash[:notice] = "Successfully created wine."
      redirect_to @wine
    else
      render :action => 'new'
    end
  end
  
  def edit
    @wine = Wine.find(params[:id])
    if @wine.ingredients.count < 5
      (5 - @wine.ingredients.count).times { @wine.ingredients.build }
    end
  end
  
  def update
    @wine = Wine.find(params[:id])
    if @wine.update_attributes(params[:wine])
      flash[:notice] = "Successfully updated wine."
      redirect_to @wine
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy
    flash[:notice] = "Successfully destroyed wine."
    redirect_to wines_url
  end
end
