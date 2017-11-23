class ClientsController < ApplicationController

  before_action :authenticate_user!

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @client_order = Project.where(:client_id=> params[:id], :project_delete=>'0')

    @client_order_amount = Project.where(:client_id=> params[:id], :project_delete=>'0').sum(:project_amount)
    @client_order_paid = Project.where(:client_id=> params[:id], :project_delete=>'0').sum(:project_paid)
    @client_order_total = @client_order.count
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params.require(:client).permit(:client_name, :client_phone, :client_email, :client_sex, :client_address ))

    if @client.save
      redirect_to clients_path, :notice=> 'Client was successfully created.'
    else
      redirect_to new_clients_path, :alert=> 'Client was not created.'
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(params.require(:client).permit(:client_name, :client_phone, :client_email, :client_sex, :client_address ))
      redirect_to clients_path, :notice=> 'Client was successfully updated.'
    else
      redirect_to edit_clients_path, :alert=> 'Client was not updated.'
    end
  end

  def destroy
  end
end
