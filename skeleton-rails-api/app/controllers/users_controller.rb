class UsersController < ApplicationController

  after_filter :cors_set_access_control_headers

  def create
    # new user registration with facebook auth
  end

  def show # sends user info, upcoming events, hosting events
    # show user info
    @user = User.find(params[:id])

    # query for upcoming events as guest
    @upcoming_rsvps = Rsvp.where(attendee_id: @user.id)
    @upcoming_events = []
    @upcoming_rsvps.each do |e|
      @upcoming_events << Event.find(e.event_id)
    end

    # query for upcoming events as host
    @hosting_events = Event.where(host_id: @user.id)

    response = { user: @user, upcoming_events: @upcoming_events, hosting_events: @hosting_events }

    render :json => response
  end

private

  def users_params
    params.require(:user).permit(:name, :city, :state, :picture, :age)
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

end
