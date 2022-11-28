puts "🌱 Seeding spices..."

ChirperProfile.create(name: "Zuko")
ChirperProfile.create(name: "Liz")
ChirperProfile.create(name: "Blue")
ChirperProfile.create(name: "Joe")
ChirperProfile.create(name: "Wednesday")

# ChirperProfile.all.each do |chirp|
#         Chirp.create(
#             chirper_profile_id: chirp.id, 
#             chirp_message: "testing")
# end 

# ChirperProfile.all.map do |chirp|
#     Chirp.create(
#         chirper_profile_id: chirp.id, 
#         chirp_message: "testing")
# end 

# 5.times do |count|
#     ChirperProfile.create(name: Faker::Name.unique.name)
#   end
 

puts "✅ Done seeding!"
