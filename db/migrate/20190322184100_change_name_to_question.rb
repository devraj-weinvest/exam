class ChangeNameToQuestion < ActiveRecord::Migration[5.0]
  def change
  	rename_column :questions, :name, :question
  end
end
