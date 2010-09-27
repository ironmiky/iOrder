class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
  before_filter :iphone_redirect
  
  private
  
	def mobile_device?
		request.user_agent =~ /Mobile/
	end
		
	helper_method :mobile_device? 
	
	def iphone_redirect
		request.format = :iphone if mobile_device?
	end
end
