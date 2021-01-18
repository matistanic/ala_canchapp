# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sport.create(name: 'Basquetbol')
Sport.create(name: 'Natación')
Sport.create(name: 'Fútbol')
Sport.create(name: 'Escalada')

Place.create(name: 'Parque Inés de Suarez', address: 'Antonio Varas 1510, Providencia', sport_id: 1)
Place.create(name: 'Parque Araucano', address: 'Av. Presidente Riesco 5877, Las Condes', sport_id: 1)
Place.create(name: 'Piscina Juan Gomez Millas', address: 'Capitán Ignacio Carrera Pinto 1045, Ñuñoa', sport_id: 2)
Place.create(name: 'Estadio Nacional', address: 'Av. Grecia 2001, Ñuñoa', sport_id: 2)
Place.create(name: 'Club Lo Cañas', address: 'Av. San Josemaría Escrivá de Balaguer 5000, Vitacura', sport_id: 3)
Place.create(name: 'Ciudad Deportiva Iván Zamorano', address: 'Padre Hurtado Sur 2650, Las Condes', sport_id: 3)
Place.create(name: 'Casa Boulder', address: 'Av. Italia 875', sport_id: 4)
Place.create(name: 'Gimnasio El Muro', address: 'Av. Américo Vespucio Sur 1647, Las Condes', sport_id: 4)

Schedule.create(description: 'Sábados 10:00, 3vs3, libre', place_id: 1)
Schedule.create(description: 'Sábados y Domingos 11:00, 3vs3, libre', place_id: 2)
Schedule.create(description: 'Todos los días entre 6:00 y 22:00, con inscripción', place_id: 3)
Schedule.create(description: 'Lunes, Martes y Miércoles 18:00, entre 15 y 29 años, con inscripción', place_id: 4)
Schedule.create(description: 'Todos los días entre 8:00 y 22:00, con inscripción', place_id: 5)
Schedule.create(description: 'Lunes a Viernes entre 10:00 y 22:00', place_id: 6)
Schedule.create(description: 'Todos los días entre 10:00 y 20:00', place_id: 7)
Schedule.create(description: 'Todos los días entre 10:00 y 22:00, con inscripción', place_id: 8)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create!(email: 'admin@test.com', password: '123qwe', password_confirmation: '123qwe', admin:true)
