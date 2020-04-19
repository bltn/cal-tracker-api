class MealEntriesController < ApplicationController

  def create
    @day = Day.find(params[:day_id])
    @meal_entry = @day.meal_entries.create meal_entry_params

    render :create
  end

  def destroy
    @day = Day.find(params[:day_id])
    @meal_entry = @day.meal_entries.find(params[:id])

    head :ok if @meal_entry.destroy
  end

  private

  def meal_entry_params
    params.require(:meal_entry).permit(:name, :calories)
  end
end
