class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login!(user)
    @current_user = user
    session[:session_token] = user.session_token
  end

  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logout!
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
  end

  helper_method :current_user
end
