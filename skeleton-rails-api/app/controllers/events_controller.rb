class EventsController < ApplicationController

  after_filter :cors_set_access_control_headers

  def index
    #  will display differently depending on view
    @events = Event.all
    render :json => @events
  end

  def create
    @event = Event.new(events_params)
    @error_messages = []
    # if public == false, set all :accepted values for that event to false
    if @event.save
      redirect_to events_path(@event)
    else @error_messages = @event.errors.full_messages
      render :json => @error_messages
    end
  end

  def show
    @event = Event.find(params[:id])
    @guests = @event.users
    response = { :event => @event, :guests => @guests }
    render :json => response
    # respond_to do |format|
    #   format.json { render :json => response }
    # end
  end

  def update
    event = Event.find(params[:id])
    flag_count = event.flag_count + 1
    event.update(flag_count: flag_count)
    render :json => flag_count
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

private

  def events_params
    params.require(:event).permit(:title, :description, :location, :date_time, :category, :adult, :public)
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

end
