class AdminController < ApplicationController
  
# def become
#     return unless current_user.is_an_admin?
#     sign_in(:user, User.find(params[:id]))
#     redirect_to root_url # or user_root_url
#   end


def index
@total_orders = Order.count

if current_user.try (:admin?)
redirect_to products_path
else 
	redirect_to log_in_path
end

end

def create

if current_user.admin != true
current_user.admin = true #if admin is boolean
current_user.save
end
end
end
