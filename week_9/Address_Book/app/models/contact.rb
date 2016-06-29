class Contact < ActiveRecord::Base

	def self.contacts_entry_older(n)
		limit(n).order(created_at: :asc)
	end

	def self.contacts_entry_newer(n)
		limit(n).order(created_at: :desc)
	end

	def self.contacts_entry_aplha(n)
		limit(n).order(name: :asc)
	end

	def self.serach_by(info)

	end

end
