class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale, if: :session_locale_present?

  helper_method :current_user

  def change_locale
    session[:locale] = params[:locale]
    redirect_back fallback_location: root_path
  end

  def current_user
    if session[:admin_id]
      @current_user ||= Admin.find(session[:admin_id])
    else
      @current_user = nil
    end
  end

  def set_locale
   I18n.locale = session[:locale]
  end
  protected

  def session_locale_present?
   session[:locale].present?
  end
end
