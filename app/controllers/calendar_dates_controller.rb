class CalendarDatesController < ApplicationController
  include Pagy::Backend

  def index
    load_collection
  end

  def show
    load_resource
  end

  private

  def load_collection
    @pagy, @collection = pagy(CalendarDate.ordered)
  end

  def load_resource
    @resource = CalendarDate.find(params[:id])
  end

end
