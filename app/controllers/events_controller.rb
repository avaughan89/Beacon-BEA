class EventsController < ApplicationController

  after_filter :cors_set_access_control_headers

  def index
    events = Event.all
    render :json => events
  end

  def create
    p events_params
    p params
    event = Event.new(events_params)
    error_messages = []
    if event.save
      render :json => event
    else error_messages = event.errors.full_messages
      render :json => error_messages
    end
  end

  def show
    event = Event.find(params[:id])
    # guests = []
    # rsvps.each do |r|
    #   guests << User.find(r.attendee_id)
    # end
    # response = { :event => event, :guests => guests }
    render :json => event
    # respond_to do |format|
    #   format.json { render :json => response }
    # end
  end

  def update
  event = Event.find(params[:id])
  event.increment!(:people_count)
  render :json => event
  end
  # def destroy
  #   event = Event.find(params[:id])
  #   event.destroy
  #   redirect_to events_path
  # end

  # def pending
  #   # show all RSVPs where current event's associated RSVPs have pending statuses
  #   event = Event.find(params[:id])
  #   pending_rsvps = Rsvp.where(event_id: event.id, status: "pending")
  #   render :json => pending_rsvps
  # end

  # def flag
  #   event = Event.find(params[:id])
  #   flag_count = event.flag_count + 1
  #   event.update(flag_count: flag_count)
  #   render :json => flag_count
  # end

private

  def events_params
    params.permit(:title, :description, :location, :date_start,:date_end, :category, :people_count)
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

end
