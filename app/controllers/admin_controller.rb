class AdminController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"
  def index
    @projects_demanda = Project.demanda_projects
  end

end
