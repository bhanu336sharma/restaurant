class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # def after_sign_in_path_for(resource)
  #     "/"
  #   end
	before_filter :create_food
	def create_food
	  	@food = Item.all

	end

   
  protect_from_forgery with: :exception
end
