class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :ques_type
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :correct_answer
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
