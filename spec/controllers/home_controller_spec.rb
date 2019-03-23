require 'spec_helper'
include ActionController::RespondWith
RSpec.describe HomeController do
  let!(:user) { create(:user)}
  let!(:exam) {create(:exam)}
  let!(:subject) {create(:subject, exam: exam)}
  let!(:topic) {create(:topic, subject: subject)}
  let!(:chapter) {create(:chapter, topic: topic)}
  let!(:question) {create(:question, chapter: chapter)}
  let(:response_json) { JSON.parse(response.body) }
  let(:auth_headers) { user.create_new_auth_token }
  before do
    request.headers['access-token'] = auth_headers['access-token']
    request.headers['client'] = auth_headers['client']
    request.headers['uid'] = auth_headers['uid']
  end

  describe "#answer_question" do
    it "Answer a question" do
      difference = 1
      initial_count = user.answerd_questions.count
      post :answer_question, params: {question_id: question.id, answer: 'yes'}
      expect(response_json['message']).to eq 'Submitted your answer'
      final_count = user.answerd_questions.count
      expect(final_count - initial_count).to eq 1
    end

    it "Skip the question" do
      post :answer_question, params: {question_id: question.id}
      expect(response_json['message']).to eq 'You skipped this question'
    end

    it "Answer question which is already Submitted" do
      user.answerd_questions.create(question_id: question.id, answerd: true)
      post :answer_question, params: {question_id: question.id}
      expect(response_json['message']).to eq 'This question already Submitted'
    end
  end

  describe "#show list of random questions" do
    it "List Random Questions" do
      get :random_questions
      expect(response_json['questions']).to be_kind_of Array
      expect(response_json['questions']).not_to be_empty
      expect(response_json['questions'].last['question']).not_to be_empty
    end
  end

  describe "#user performance" do
    it "get the student performance" do
      question2 = create(:question, question: 'qst1', chapter: chapter)
      question3 = create(:question, question: "sqt2", chapter: chapter)
      question4 = create(:question, question: "sqt23", chapter: chapter)
      user.answerd_questions.create(question_id: question.id, answerd: true,correct: true)
      user.answerd_questions.create(question_id: question2.id, answerd: true, correct: false)
      user.answerd_questions.create(question_id: question3.id)
      get :user_performance, params: {section: 'Exam', name: exam.name}
      expect(response_json['user_performance']).to be_kind_of Hash
      expect(response_json['user_performance']['right_per']).to eq "25.0%"
      expect(response_json['user_performance']['wrong_per']).to eq "25.0%"
      expect(response_json['user_performance']['skip_per']).to eq "25.0%"
      expect(response_json['user_performance']['unseen_per']).to eq "25.0%"
    end
  end
end
