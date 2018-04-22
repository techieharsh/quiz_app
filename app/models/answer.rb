class Answer < ApplicationRecord
  validates :option, presence: true
  belongs_to :question, dependent: :destroy
end