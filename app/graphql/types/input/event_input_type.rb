module Types
	module Input
		class EventInputType < Types::BaseInputObject
			argument :title, String, required: true
			argument :description, String, required: true
			argument :location, String, required: true
			argument :category, String, required: true
			argument :date, String, required: true
			argument :start_time, String, required: true
			argument :end_time, String, required: true
		end
	end
end
