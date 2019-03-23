class AddOptionsAndAnswerToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :options, :text
    add_column :questions, :answer, :string
  end
end
