class ApplicationController < ActionController::Base
	before_filter :create_food
	def create_food
	  	@food = Item.all
	end
  protect_from_forgery with: :exception
end
