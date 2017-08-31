class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      if @current_user
        return @current_user
    else
      return nil
    end
    end
  end

    def logged_in
      !!current_user
    end

    def require_user
      if !logged_in
        redirect_to root_path
    end
  end
end
