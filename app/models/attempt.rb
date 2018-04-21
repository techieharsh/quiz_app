class Attempt < ApplicationRecord
  belongs_to :quiz
  has_many :quizsubmits

  accepts_nested_attributes_for :quizsubmits
end
