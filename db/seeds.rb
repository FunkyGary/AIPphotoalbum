# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all

url = "https://uinames.com/api/?ext&region=england"
i = 0

15.times do
  i = i+1
  response = RestClient.get(url)
  data = JSON.parse(response.body)
  photo = Photo.create!(
    id: i,
    title: data["name"],
    date: data["birthday"]["dmy"],
    description: data["email"],
    remote_file_location_url: data["photo"]
  )
  puts "created No.#{i} photo #{photo.title}"
end

puts "now you have #{Photo.count} photos data"
