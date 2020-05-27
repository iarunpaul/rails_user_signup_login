class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
    def current_user
        @user ||= User.find(session[:user_id]) if session[:user_id]
    end
  helper_method :current_user
  
  private  
    def sign_in(user)
      
      session[:user_id] = user.id
      
    end  
  helper_method :sign_in      
  
  
end
