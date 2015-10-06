class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authorize
  protect_from_forgery with: :exception
helper_method :current_user
  
protected

    def authorize
       unless User.find_by_id(session[:user_id])
         redirect_to log_in_url, notice: "Please log in"
       end
    end

 # def authorize
 #    redirect_to '/log_in' unless current_user
 #  end




  private
  
def current_cart
Cart.find(session[:cart_id])

rescue ActiveRecord::RecordNotFound
cart = Cart.create

session[:cart_id] = cart.id
cart
end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end