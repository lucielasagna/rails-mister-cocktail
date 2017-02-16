class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update, :destroy]
  def index
    @doses = Dose.all
  end

  def show
    #@task = Task.find(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    dose = Dose.new(dose_params)
    dose.save
  end

  def edit
    #@task = Task.find(params[:id])
  end

  def update
    #@task = Task.find(params[:id])
    @dose.update(dose_params)
  end

  def destroy
    #@task = Task.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
