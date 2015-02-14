class RsvpController < AppController

  after_filter :cors_set_access_control_headers

  def create
    if Event.find(params[:event_id]).public == false
      status == "pending"
    else
      status == "accepted"
    end

    rsvp = Rsvp.create(event_id: params[:event_id], attendee_id: current_user.id, status: status)

    render nothing: true, status: 200
  end

  def update
    rsvp = Rsvp.find(params[:id])
    if params[:status] == "accepted"
      rsvp.update(status: "accepted")
    else
      rsvp.update(status: "rejected")
    end
    render nothing: true, status: 200
  end

  private

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end
  # def rsvps_params
  #   params.require(:rsvp).permit(:attendee_id, :event_id, :status)
  # end

end
