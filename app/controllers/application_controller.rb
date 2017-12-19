class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def current_admin
    if (current_user.permission_level == 'admin')
      @current_user = User.find(session[:user_id])
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end

  def authorize_admin
    if ( !current_admin )
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end
end
