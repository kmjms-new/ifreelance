class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.where(:project_delete=>'0')
  end

  def show
    @project  = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @client = Client.all
    @freelance = Freelance.where(:freelance_delete=>'0')
  end

  def create
    @project = Project.new(params.require(:project).permit(:client_id, :ifreelance_id, :delivery_date, :project_amount, :project_paid, :project_status, :project_details))

    if @project.save
      Invoice.create(:project_id=>Project.last.id)
      redirect_to edit_invoice_path(Project.last.id), :notice=> 'Project was successfully created.'
    else
      redirect_to new_project_path, :alert=> 'Project was not created.'
    end
  end

  def edit
  	@project = Project.find(params[:id])
  	@client = Client.all
    @freelance = Freelance.where(:freelance_delete=>'0')
  end

  def update
    @project = Project.find(params[:id])

  	if @project.update(params.require(:project).permit(:client_id, :freelance_id, :delivery_date, :project_amount, :project_paid, :project_status, :project_details))
      redirect_to projects_path , :notice=> 'Project was successfully updated.'
    else
      redirect_to edit_projects_path, :alert=> 'Project was not updated.'
    end
  end

  def destroy
  	if @project = Project.where(:id=>params[:id]).update_all(:project_delete=>'1')
      redirect_to projects_path
    end
  end
end
