module Types
	module Event
		class EventInputType < Types::BaseInputObject
			argument :title, String, required: true
			argument :description, String, required: true
			argument :location, String, required: true
			argument :category, String, required: true
			argument :date, Date, required: true
			argument :start, Time, required: true
			argument :end, Time, required: true
		end
	end
end
