class CocktailsController < ApplicationController
  before_action :edit_cocktail_url, only: [:show, :edit, :update, :destroy]
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
      @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save
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
      @cocktail.update(cocktail_params)
    end

    def destroy
      #@task = Task.find(params[:id])
      @cocktail.destroy
      redirect_to cocktail_path
    end

    private

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end

    def edit_cocktail_url
      @cocktail = Cocktail.find(params[:id])
    end
end
