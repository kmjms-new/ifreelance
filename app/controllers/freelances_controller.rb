class FreelancesController < ApplicationController
  before_action :authenticate_user!

  def index
    @freelances = Freelance.where(:freelance_delete=>'0')
  end

  def show
    @freelance = Freelance.find(params[:id])
    @freelance_salary = Salary.where(:freelance_id=>params[:id])
  end

  def new
    @freelance = Freelance.new
  end

  def create
    @freelance = Freelance.new(params.require(:freelance).permit(:freelance_name, :freelance_phone, :freelance_email, :freelance_sex, :freelance_address, :freelance_salary, :freelance_delete))

    if @freelance.save
      redirect_to freelances_path, :notice=> 'Freelance was successfully created.'
    else
      redirect_to freelances_path, :alert=> 'Freelance was not created.'
    end
  end

  def edit
    @freelance = Freelance.find(params[:id])
  end

  def update
    @freelance = Freelance.find(params[:id])

    if @freelance.update(params.require(:freelance).permit(:freelance_name, :freelance_phone, :freelance_email, :freelance_sex, :freelance_address, :freelance_salary, :freelance_delete))
      redirect_to freelances_path, :notice=> 'Freelance was successfully updated.'
    else
      redirect_to edit_freelances_path, :alert=> 'Freelance was not updated.'
    end
  end

  def destroy
    if @project = Freelance.where(:id=>params[:id]).update_all(:freelance_delete=>'1')
      redirect_to freelances_path
    end
  end
end
