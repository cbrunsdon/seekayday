class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user
  protected
  def set_current_user
    Authorization.current_user = current_user
  end

  def permission_denied
    flash[:error] = "You do not have permission to access that"
    redirect_to root_path if Rails.env.production?
    return render :text => "no permissions", :status => 403 if !Rails.env.production?
  end

  before_filter :set_user_time_zone
  private
  def set_user_time_zone
    Time.zone = "Pacific Time (US & Canada)"
  end

end
