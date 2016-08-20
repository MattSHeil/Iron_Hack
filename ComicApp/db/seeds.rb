clark, tony, rick = User.create([
  {name: 'Clark Kent',  email: 'clark@ironhack.com', password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Tony Stark',  email: 'tony@ironhack.com',  password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Rick Grimes', email: 'rick@ironhack.com',  password: 'ironhack', password_confirmation: 'ironhack'}
])

# Seed some comics
clark.comics.create([{title: 'Watchmen', publisher: 'Vertigo'}, {title: 'The Walking Dead', publisher: 'Planeta'}])
rick.comics.create([{title: 'V for a Vendetta', publisher: 'Vertigo'}, {title: '300', publisher: 'Norma'}])