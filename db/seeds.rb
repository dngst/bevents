require "faker"

User.create!(email: "test@example.com", password: "password")

p "created #{User.all.size} user"

50.times do
	Event.create!(
		title: Faker::Name.name_with_middle,
		description: Faker::Quote.matz,
		location: Faker::Mountain.name,
		category: Faker::Book.genre,
		date: "2023-11-15",
		start_time: "22:30",
		end_time: "23:30",
		user_id: User.last.id
	)
end

p "created #{Event.all.size} events"
