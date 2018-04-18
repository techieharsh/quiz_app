class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :ques_type
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.boolean :correct_answer
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
