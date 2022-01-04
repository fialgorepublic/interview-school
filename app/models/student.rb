class Student < ApplicationRecord
	has_many :schedules, dependent: :destroy
	has_many :class_students, dependent: :destroy
end
