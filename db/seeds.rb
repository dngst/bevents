require "faker"

50.times do
	Event.create!(
		title: Faker::Name.name_with_middle,
		description: Faker::Quote.matz,
		location: Faker::Mountain.name,
		category: Faker::Book.genre,
		date: Date.today,
		start: Time.now,
		end: Time.now + (60 * 60)
	)
end

p "created #{Event.all.size} events"
