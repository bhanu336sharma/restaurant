class BookTable < ActiveRecord::Base
	def generate_pin
  		self.pin = rand(0000..9999).to_s.rjust(4, "0")
  		save
	end	
	def twilio_client
	  Twilio::REST::Client.new('ACe749e411a2df78042454f1b58f60566d', '6de9fb40bcac0b6fbb7b7ffc45389a58')
	end
	def send_pin
	  	twilio_client.messages.create(
	    	to: phone,
	    	from: '+16572209193',
	    	body: "Your PIN is #{pin}"
	  	)
	end
	def verify(entered_pin)
		if self.pin == entered_pin
	  		update(verified: true)
	  		redirect_to "/", notice: "Confirmation email has been sent" 
	  	else
	  		update(verified: false)
	  	end
	end
end
