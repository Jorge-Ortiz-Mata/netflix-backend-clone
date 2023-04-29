m1 = Movie.create(
  name: 'Harry Potter',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quis voluptates molestiae? Culpa at temporibus, provident illo laudantium nobis ducimus nesciunt eos! Officiis fuga aut fugit minima nam iste et.',
  year: 2001,
  duration: 146,
)

m1.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/harry-potter.jpg')),
  filename: 'harry-potter.jpg'
)

m2 = Movie.create(
  name: 'Spiderman',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quis voluptates molestiae? Culpa at temporibus, provident illo laudantium nobis ducimus nesciunt eos! Officiis fuga aut fugit minima nam iste et.',
  year: 2002,
  duration: 135,
)

m2.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/spiderman.jpg')),
  filename: 'spiderman.jpg'
)

m3 = Movie.create(
  name: 'The Avengers',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quis voluptates molestiae? Culpa at temporibus, provident illo laudantium nobis ducimus nesciunt eos! Officiis fuga aut fugit minima nam iste et.',
  year: 2012,
  duration: 153,
)

m3.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/avengers.jpg')),
  filename: 'avengers.jpg'
)

m4 = Movie.create(
  name: 'La la land',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quis voluptates molestiae? Culpa at temporibus, provident illo laudantium nobis ducimus nesciunt eos! Officiis fuga aut fugit minima nam iste et.',
  year: 2001,
  duration: 114
)

m4.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/lalaland.jpg')),
  filename: 'lalaland.jpg'
)

m5 = Movie.create(
  name: 'Gol',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quis voluptates molestiae? Culpa at temporibus, provident illo laudantium nobis ducimus nesciunt eos! Officiis fuga aut fugit minima nam iste et.',
  year: 2004,
  duration: 120
)

m5.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/gol.jpg')),
  filename: 'gol.jpg'
)
