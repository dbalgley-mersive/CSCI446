class ApplicationController < ActionController::Base
  helper :all
  helper_method :current_user
  protect_from_forgery
  before_filter :set_current_user
  before_filter { |c| Authorization.current_user = c.current_user}

  protected

  def set_current_user
    Authorization.current_user = current_user
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  private

  def current_user_session
  	return @current_user_session if defined?(@current_user_session)
  	@current_user_session = UserSession.find
  end


end
