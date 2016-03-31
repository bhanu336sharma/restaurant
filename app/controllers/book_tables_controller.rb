class BookTablesController < ApplicationController
	def new
		@table = BookTable.new
	end

	def create		
		@table = BookTable.create(table_params)		
		UserMailer.confirm(@table).deliver	
		if @table.save
			redirect_to "/"
		else
			render "/book_a_table"
		end
	end

	def create_phone
	 	@table = BookTable.create(phone: params[:phone].gsub(" ","+"))
		@table.generate_pin
	  	@table.send_pin
	  	render :json => {status: "ok", data: @table}
	end

	def verify
		binding.pry
	 	@table = BookTable.find_by(phone: params[:hidden_phone])
	  	@table.verify(params[:pin])	 
	  	respond_to do |format|
		    format.js
		end 	
	end	
	
	def index
		redirect_to "/", notice: "Confirmation email has been sent"
	end

	def table_params  
		params.require(:book_table).permit(:name, :address, :email, :phone, :date, :person, :requests)
	end
end