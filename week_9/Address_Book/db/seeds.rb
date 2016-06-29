address_book = [
	["Mario","123 Mario st","7864560000","Mario@gmail.com"],
	["Luigi","123 Luigi st","7864560001","Luigi@gmail.com"],
	["Peach","123 Peach st","7864560002","Peach@gmail.com"],
	["Bowser","123 Bowser st","7864560003","Bowser@gmail.com"],
	["Toad","123 Toad st","7864560004","Toad@gmail.com"]
]

address_book.each do | name, address, phone, email |
	Contact.create(name: name, address: address, phone: phone, email: email )
end