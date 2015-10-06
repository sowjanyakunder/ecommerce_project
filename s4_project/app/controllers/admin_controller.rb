class AdminController < ApplicationController
  
# def become
#     return unless current_user.is_an_admin?
#     sign_in(:user, User.find(params[:id]))
#     redirect_to root_url # or user_root_url
#   end



def index
@total_orders = Order.count
end

end
