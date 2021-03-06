class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include AngersHelper
  after_filter :allow_iframe
  private
   def allow_iframe
	response.headers.delete "X-Frame-Options"
        response.headers.delete "X-XSS-Protection"
        response.headers.delete "X-Content-Type-Options"
   end

end
