class RegistrationsController <  Devise::RegistrationsController

	
	# def after_sign_up_path_for(resource)
	#     "/"
	#   end
  # binding.pry
	def add_to_cart
  	@user = User.find(params[:id])
    @user.update(cart: params[:cart])
  	# @user.update(cart_params)
    # render :json => {status: "ok"}
    redirect_to "order"
	end
  def sign_up_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :role)
 	end  
end