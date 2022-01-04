module ApplicationHelper
	def teacher_full_name(teacher)
		[teacher.first_name, teacher.last_name ].select(&:present?).join(' ').titleize
	end

	def get_sections(student)
		student_sections = student.schedules.pluck(:section_id)
		Section.includes(:subject).where.not(id: student_sections).pluck(:"subjects.name", :start_time, :end_time, :id).map { |subject, start_time, end_time, id| ["#{subject}-#{start_time.strftime("%H:%M:%S")}-#{end_time.strftime("%H:%M:%S")}", id]  }
	end
end
