class AttemptsController < ApplicationController
  before_action :authenticate_user!
  def new
  	@quiz = Quiz.find_by_id(params[:quiz_id].to_i)
  	@attempt = Attempt.new
  end

  def create
  end

  def show
  end
end
