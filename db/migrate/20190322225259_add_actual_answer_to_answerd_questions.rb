class AddActualAnswerToAnswerdQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :answerd_questions, :actual_answer, :string
  end
end
