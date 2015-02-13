class EventsController < ApplicationController

  after_filter :cors_set_access_control_headers

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
