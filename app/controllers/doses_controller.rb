class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update, :destroy]
  def index
    @doses = Dose.all
  end

  def show
    #@task = Task.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new
  end

  def create
      #@review = Review.new(review_params)
      # we need `restaurant_id` to asssociate review with corresponding restaurant
      #@review.restaurant = Restaurant.find(params[:restaurant_id])
      #@review.save
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = @cocktail.doses.new(dose_params)
      if @dose.save
        redirect_to @cocktail
      else
        render :new
      end
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
    redirect_to dose_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
