class DashboardsController < ApplicationController
  def index
    	month = Date.today
    	@projects = Project.where(:project_delete=>'0')
    	@project_due = (@projects.sum(:project_amount) - @projects.sum(:project_paid))

      @projects_processing = Project.where(:project_delete=>'0', :project_status=>'Processing')
      @project_processing = @projects_processing.count

    	@projects_ready = Project.where(:project_delete=>'0', :project_status=>'Ready')
    	@project_ready = @projects_ready.count

    	@projects_confirm = Project.where(:project_delete=>'0', :project_status=>'Confirm')
    	@project_confirm = @projects_confirm.count

      @projects_delivered = Project.where(:project_delete=>'0', :project_status=>'Delivered')
      @project_delivered = @projects_delivered.count

    	@freelances = Freelance.where(:freelance_delete=>'0').count


    	@project_month = Project.where(:project_delete=>'0', :created_at=>month.all_month).count
      @project_month_ready = Project.where(:project_delete=>'0', :project_status=>'Ready', :created_at=>month.all_month).count
    	@project_month_delivery = Project.where(:project_delete=>'0', :project_status=>'Delivered', :created_at=>month.all_month).count
    	@project_month_total = Project.where(:project_delete=>'0', :created_at=>month.all_month).sum(:project_amount)
    	@project_month_paid = Project.where(:project_delete=>'0', :created_at=>month.all_month).sum(:project_paid)
    	@project_month_due = (@project_month_total - @project_month_paid)

      @clients = Client.all.count

      
    end
  end
