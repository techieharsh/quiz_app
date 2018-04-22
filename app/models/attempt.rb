class Attempt < ApplicationRecord
  belongs_to :quiz
  has_many :quizsubmits

  accepts_nested_attributes_for :quizsubmits

  def self.get_result(attempt)
  	@user_score = 0
  	@attempt = attempt
  	@max_score = @attempt.quizsubmits.size
    @attempt.quizsubmits.each{ |ques| 
     if ques.question.correct_answer == ques.answer.option
     	@user_score +=1
     end
    }
    total_score = (@user_score.to_f / @max_score.to_f)*100
    total_score
  end
end
