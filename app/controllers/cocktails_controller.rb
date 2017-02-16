class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
    def index
      @cocktails = Cocktail.all
    end

    def show
      #@task = Task.find(params[:id])
    end

    def new
      @cocktail = Cocktail.new
    end

    def create
      cocktail = Cocktail.new(dose_params)
      cocktail.save
    end

    def edit
      #@task = Task.find(params[:id])
    end

    def update
      #@task = Task.find(params[:id])
      @cocktail.update(dose_params)
    end

    def destroy
      #@task = Task.find(params[:id])
      @cocktail.destroy
      redirect_to cocktails_path
    end

    private

    def dose_params
      params.require(:cocktail).permit(:name)
    end

    def set_dose
      @cocktail = Cocktail.find(params[:id])
    end
end
