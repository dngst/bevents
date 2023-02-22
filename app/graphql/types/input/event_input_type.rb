module Types
  module Input
    class EventInputType < Types::BaseInputObject
      argument :category, String, required: false
      argument :date, String, required: false
      argument :description, String, required: false
      argument :end_time, String, required: false
      argument :location, String, required: false
      argument :start_time, String, required: false
      argument :title, String, required: false
    end
  end
end
