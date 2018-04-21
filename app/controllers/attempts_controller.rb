class AttemptsController < ApplicationController
  before_action :authenticate_user!
  def new
  	@quiz = Quiz.find_by_id(params[:quiz_id].to_i)
  	@attempt = @quiz.attempts.build
    @quiz.questions.each {|question| @attempt.quizsubmits.build(question: question)}
  end

  def create
  end

  def show
  end
end
