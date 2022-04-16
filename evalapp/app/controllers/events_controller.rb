class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def feedback
    @event = Event.find(params[:id])
  end
end
