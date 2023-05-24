require 'faker'

Restaurant.destroy_all

50.times do
  new_restaurant = Restaurant.new(name: Faker::JapaneseMedia::CowboyBebop.episode,
                                  address: Faker::Address.full_address,
                                  phone_number: Faker::PhoneNumber.phone_number,
                                  category: ["chinese", "italian", "japanese", "french", "belgian"].sample)

  if new_restaurant.save
    puts "#{new_restaurant.id} was created.."
  end
end

puts "done"
