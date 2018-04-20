class Question < ApplicationRecord
  resourcify
  belongs_to :quiz
end
