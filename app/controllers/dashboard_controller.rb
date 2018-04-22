class DashboardController < ApplicationController
  def index
  	@quizzes = Quiz.all
  	@quizzes_attempted = Attempt.where("user_id=?",current_user.id)
  	render 'index' if current_user.has_role? :admin
    render 'student_dashboard' if current_user.has_role? :student
  end
end
