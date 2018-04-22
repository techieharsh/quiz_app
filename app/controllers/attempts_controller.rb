class AttemptsController < ApplicationController
  before_action :authenticate_user!
  def new
  	@quiz = Quiz.find_by_id(params[:quiz_id].to_i)
  	@attempt = @quiz.attempts.build
    @quiz.questions.each {|question| @attempt.quizsubmits.build(question: question)}
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @attempt = @quiz.attempts.build attempt_params
    @attempt[:user_id] = current_user.id
    if @attempt.save
        redirect_to quiz_attempt_path(@quiz,@attempt), notice: 'Quiz is successfully submitted.' 
    end
  end

  def show
    @quiz = Quiz.find params[:quiz_id]
    @attempt = Attempt.find params[:id]
    @result = Attempt.get_result(@attempt)
  end

  private

  def attempt_params
    params.require(:attempt).permit(:id, :user_id, quizsubmits_attributes: [ :attempt_id, :question_id, :answer_id, :user_id ])
  end
end
