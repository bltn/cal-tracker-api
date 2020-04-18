class DaysController < ApplicationController
  def index
    @days = Day.all
    render :index
  end

  def create
    @day = Day.create day_params
    render :create
  end

  def destroy
    @day = Day.find(params[:id])
    head :ok if @day.destroy
  end

  private

  def day_params
    params.require(:day).permit(:name)
  end
end
