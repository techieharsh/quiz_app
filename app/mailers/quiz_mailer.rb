class QuizMailer < ApplicationMailer
	def send_score_to_student(quiz_id, attempt_id, recipient)
		@quiz = Quiz.find quiz_id
        @attempt = Attempt.find attempt_id
        @result = Attempt.get_result(@attempt)
        @from = "techieharsh1991@gmail.com"
        @recipient = recipient
        
        mail(from: @from, to: @recipient, subject: 'Quiz Result')
	end
end
