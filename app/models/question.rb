class Question < ApplicationRecord
  validates_uniqueness_of :question
  serialize :options
  belongs_to :chapter

  def correct(answer)
  	self.answer == answer
  end
end
