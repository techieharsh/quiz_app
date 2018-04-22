class CreateQuizSubmits < ActiveRecord::Migration[5.1]
  def change
    create_table :quizsubmits do |t|
      t.references :attempt, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
