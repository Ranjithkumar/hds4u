class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!
  
  layout :set_layout
  
  
  private
  
  def set_layout
    user_signed_in? ? "admin" : "sign"
  end

end
