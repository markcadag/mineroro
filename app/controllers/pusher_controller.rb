class PusherController < ApplicationController

  def auth
    if current_user && @current_mine 
      if current_user.has_role?('admin', @current_mine) || current_user.has_role?('contractor', @current_mine)
      	response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
      	render :json => response
      else
      	render :text => "No Access", :status => '403'
      end
    else
      render :text => "Forbidden", :status => '403'
    end
  end
end