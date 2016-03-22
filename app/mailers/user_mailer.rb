class UserMailer < ActionMailer::Base
  default from: "testrailsid@gmail.com.com"
   def confirm(table)
  	@table = table
  	@url = "/book_tables/new"
  	mail(to: @table.email, subject: "Confirm Your Table Booking")
  end 

end
