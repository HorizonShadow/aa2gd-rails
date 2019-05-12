class TimeTable < ApplicationRecord
  has_many :monday_times, class_name: "TimeValue"
  has_many :tuesday_times, class_name: "TimeValue"
  has_many :wednesday_times, class_name: "TimeValue"
  has_many :thursday_times, class_name: "TimeValue"
  has_many :friday_times, class_name: "TimeValue"
  has_many :saturday_times, class_name: "TimeValue"
  has_many :sunday_times, class_name: "TimeValue"
end
