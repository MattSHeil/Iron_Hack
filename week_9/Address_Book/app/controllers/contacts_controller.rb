class ContactsController < ApplicationController

	def index
		@contacts_older = Contact.contacts_entry_older(10)

		@contacts_newer = Contact.contacts_entry_newer(10)

		@contacts_alpha = Contact.contacts_entry_aplha(10)

		case params[:comand]
		when params[:comand] = "older"
			@contacts = @contacts_older
		when params[:comand] = "newer"
			@contacts = @contacts_newer
		when params[:comand] = "alpha"
			@contacts = @contacts_alpha
		end
	end

	def new
		@contacts = Contact.new		  
	end

	def create
		@contacts = Contact.new(
			name: params[:contact][:name],
			address: params[:contact][:address],
			phone: params[:contact][:phone],
			email: params[:contact][:email]
		)
		@contacts.save

		redirect_to '/contacts/newer'
	end
end
