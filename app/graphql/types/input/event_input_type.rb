module Types
	module Input
		class EventInputType < Types::BaseInputObject
			argument :title, String, required: true
			argument :description, String, required: true
			argument :location, String, required: true
			argument :category, String, required: true
			argument :date, Date, required: true
			argument :start_time, Time, required: true
			argument :end_time, Time, required: true
		end
	end
end
