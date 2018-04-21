class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :ques_type
      t.text :question
      t.references :quiz, foreign_key: true
      t.string :correct_answer
      t.timestamps
    end
  end
end
