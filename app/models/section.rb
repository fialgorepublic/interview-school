class Section < ApplicationRecord
	has_many :schedules, dependent: :destroy
	has_many :class_students, dependent: :destroy
	belongs_to :class_room
	belongs_to :subject
	belongs_to :teacher

	def subject_with_time
		debugger
	end
end