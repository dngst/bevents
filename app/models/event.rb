# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  category    :string
#  date        :date
#  description :text
#  end_time    :datetime
#  location    :string
#  start_time  :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  validates :title, :description, :location, :category, :date,
            :start_time, :end_time, presence: true
end
