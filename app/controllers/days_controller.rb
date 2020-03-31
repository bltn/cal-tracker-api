class DaysController < ApplicationController
  def index
    @days = Day.all
    render :index
  end
end
