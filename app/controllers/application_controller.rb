class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #layout 'cerulean'
  layout "weddo_admin"
  protect_from_forgery with: :exception

end
