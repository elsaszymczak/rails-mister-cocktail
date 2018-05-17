class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.create(dose_params)
    redirect_to cocktail_path(@cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:description)
  end
end
