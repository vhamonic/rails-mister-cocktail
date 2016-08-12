class DosesController < ApplicationController
  before_action :find_cocktail

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
        redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
