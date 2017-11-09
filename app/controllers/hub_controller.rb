class HubController < ApplicationController
  before_action :set_hub, only: [:show, :edit, :update]
 
  def index
    @hub = HubFile.new
  end
 
  def show
  end
 
  def new
    @hub = HubFile.new
  end
 
  def create
    @hub = HubFile.new(hub_params)
    if @hub.save
      redirect_to hub_path
    else
      render :new
    end
  end
 
  def edit
  end
 
  def update
    if @hub.update_attributes(hub_params)
      redirect_to hub_path(@hub)
    else
      render :edit
    end
  end
 
  private
 
  def hub_params
    params.require(:hub).permit(:name, :description, :myfile)
  end
 
  def set_hub
    @hub = HubFile.find(params[:id])
  end
end
