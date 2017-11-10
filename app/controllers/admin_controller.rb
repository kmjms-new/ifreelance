class AdminController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"
  def index
    @projects_demanda = Project.demanda_projects
    @total_clients = Client.count
    @ultimos_projects = Project.recientes
    @suma = Income.ingresos
    @facturapend = Invoice.facturas
    @total_proyectos = Project.count
  end

end
