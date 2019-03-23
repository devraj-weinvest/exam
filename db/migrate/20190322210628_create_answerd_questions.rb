class CreateAnswerdQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :answerd_questions do |t|
      t.integer :question_id
      t.boolean :answerd, default: false
      t.boolean :correct
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :answerd_questions, :question_id
  end
end
