class Quiz < ApplicationRecord
	has_many :attempts
	has_many :questions
	accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
end
