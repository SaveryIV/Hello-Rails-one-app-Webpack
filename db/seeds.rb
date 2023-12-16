# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Message.destroy_all

greetings = [
  { content: 'Hello!' },
  { content: '¡Hola!' },
  { content: 'Bonjour!' },
  { content: 'Hallo!' },
  { content: 'Ciao!' },
  { content: 'こんにちは！' },
  { content: '你好！' }
  # Agrega más idiomas según tus necesidades
]

# Crear registros en la base de datos
Message.create!(greetings)

puts 'Seed data added successfully!'