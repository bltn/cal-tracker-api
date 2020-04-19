class MealEntriesController < ApplicationController
  def create
    @day = Day.find(params[:day_id])
    @meal_entry = @day.meal_entries.create meal_entry_params

    render :create
  end

  private

  def meal_entry_params
    params.require(:meal_entry).permit(:name, :calories)
  end
end
