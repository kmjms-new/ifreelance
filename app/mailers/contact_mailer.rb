class ContactMailer < ApplicationMailer
	default from: "iFreelance <ifreelancemail@gmail.com>"
	def contact_send(params)
	 @parameters=params 
	 mail(to:'ifreelancemail@gmail.com',subject:@parameters[:subject].nil?) 
	end
end
