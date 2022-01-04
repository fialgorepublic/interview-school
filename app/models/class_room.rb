class ClassRoom < ApplicationRecord
	has_many :sections, dependent: :destroy
end
