class UserMailer < ActionMailer::Base
	default from: "testrailsid@gmail.com.com"
	def confirm(table)
		@table = table
		@url = "/book_tables/new"
		mail(to: @table.email, subject: "Confirm Your Table Booking")
	end 

	def send_recipe(new_recipe, current_user)
				binding.pry

		@email = current_user.email
		@recipe = new_recipe
		@url = "/recipes/new"

		mail(from: @email , to: "testrailsid@gmail.com", subject:"new recipe")
	end

end
