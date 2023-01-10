require "faker"

50.times do
	Event.create!(
		title: Faker::Name.name_with_middle,
		description: Faker::Quote.matz,
		location: Faker::Mountain.name,
		category: Faker::Book.genre,
		date: "2023-11-15",
		start_time: "22:30",
		end_time: "23:30"
	)
end

p "created #{Event.all.size} events"
