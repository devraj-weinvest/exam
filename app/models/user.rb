class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :answerd_questions
  validates_format_of :email,:with => Devise::email_regexp

  def questions(x=true)
    self.answerd_questions.where(answerd: x).pluck(:question_id)
  end

  def user_performance(all_questions)
    user_questions = Question.find(self.answerd_questions.pluck(:question_id))
    all_qstn_ids = all_questions.pluck(:id)
    user__qstnids = user_questions.pluck(:id)
    total_questions = self.answerd_questions.where(question_id: all_qstn_ids & user__qstnids)
    right_per = (total_questions.where(correct: true).count.to_f/all_questions.count.to_f)*100
    wrong_per = (total_questions.where(answerd: true, correct: false).count.to_f/all_questions.count.to_f)*100
    skip_per = (total_questions.where.not(answerd: true).count.to_f/all_questions.count.to_f)*100
    unseen = all_qstn_ids - user__qstnids
    unseen_per = (unseen.count.to_f/all_qstn_ids.count.to_f)*100
    {
      right_per: "#{right_per}%",
      wrong_per: "#{wrong_per}%",
      skip_per: "#{skip_per}%",
      unseen_per: "#{unseen_per}%"
    }
  end
end
