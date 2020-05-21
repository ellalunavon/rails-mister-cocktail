class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # @doeses = Dose.find
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cock_params)
    # @dose = Dose.new(dose_params)
    # @dose.save
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end

  end

  private

  def cock_params
    params.require(:cocktail).permit(:name)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
