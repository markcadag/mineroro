class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception
  	before_filter :get_current_mine

  	def get_current_mine
    	@current_mine = Mine.find(session[:mine_id])
    	rescue ActiveRecord::RecordNotFound
  	end

	protected
	  def current_mine
	    Mine.find(session[:mine_id])
	  rescue ActiveRecord::RecordNotFound
	end

end
