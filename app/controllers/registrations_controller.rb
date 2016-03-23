class RegistrationsController <  Devise::RegistrationsController
	def add_to_cart
  	@user = User.find(params[:id])
    @user.update(cart: params[:cart])
    redirect_to "order"
	end
  def sign_up_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :role)
 	end  
end