# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  { name: 'Frankyston Lins', email: 'frankyston@gmail.com', password: '123456', password_confirmation: '123456' },
  { name: 'Marcus vinicius', email: 'vinicius@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'Luiz Otavio', email: 'luiz@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'Joao Carlos', email: 'jc@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'Medico - Tadeu miranda', email: 'tadeu@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'Medica - Carla Maria', email: 'carla@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'gesiane de souza', email: 'gesiane@gmail.com', password: '12345678', password_confirmation: '12345678' },
  { name: 'Carlo Algusto', email: 'carlos@gmail.com', password: '12345678', password_confirmation: '12345678' }
])


Appointment.create!([
  {patient_id: 1, physician_id: 4, status: 1},
  {patient_id: 1, physician_id: 5},
  {patient_id: 2, physician_id: 4, status: 1},
  {patient_id: 3, physician_id: 4, status: 1},
  {patient_id: 6, physician_id: 4},
  {patient_id: 7, physician_id: 5}
])
