puts "🌱 Seeding spices..."

#Seed your database here
# 10.times do
#     ChirperProfile.create(
#         name: Faker::Name.name
#     )
# end 

ChirperProfile.create(name: "Zuko")
ChirperProfile.create(name: "Liz")
ChirperProfile.create(name: "Blue")
ChirperProfile.create(name: "Joe")
ChirperProfile.create(name: "Wednesday")

ChirperProfile.all.each do |chirp|
    Chirps.create(chirp_message_id: chirp.id, chirp_message: "testing")
end 
    

puts "✅ Done seeding!"
