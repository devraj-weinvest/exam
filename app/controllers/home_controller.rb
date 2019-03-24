class HomeController < ApplicationController

  api :POST, "/answer_question", "Anser a question"
  param :question_id, String, "Question id", :required => true
  param :answer, String, "Answer"
  def answer_question
    question = Question.find_by_id(answer_params[:question_id])
    user_question = current_user.answerd_questions.find_or_create_by(question_id: answer_params[:question_id])
    if user_question.answerd
      message = "This question already Submitted"
    elsif answer_params[:answer] && answer_params[:answer] != 'skip'
      user_question.update(answerd: true, correct: question.correct(answer_params[:answer]), actual_answer: question.answer)
      message = "Submitted your answer"
    else
      message = "You skipped this question"
    end
    render json: {message: message }, status: :ok
  end

  api :GET, "/random_questions", "Get random questions to current user"
  def random_questions
    skipped_ids = current_user.questions(false)
    ids = current_user.answerd_questions.pluck(:question_id)
    @all_questions = get_random_section
    @questions = @all_questions.where.not(id: ids).order("RANDOM()").limit(6)
    @questions = @questions.empty? ? @all_questions.where(id: skipped_ids) : @questions
    render json: {questions: ActiveModel::Serializer::CollectionSerializer.new(
        @questions, serializer: QuestionSerializer
      ).as_json}, status: :ok
  end

  api :GET, "/user_performance", "Get User performance"
  param :section, String, "Section Exam/Subject/Topic/Chapter", :required => true
  param :name, String, "name", :required => true
  def user_performance
    all_questions = get_query params[:section], params[:name]
    user_performance = current_user.user_performance(all_questions)
    render json: {user_performance: user_performance }, status: :ok
  end

  private
  def answer_params
    params.permit(:answer, :question_id)
  end

  def get_random_section
    category = ['Exam', 'Subject', 'Topic', 'Chapter'].sample
    rand = category.constantize.pluck(:name).sample
    @questions = get_query(category,rand)
  end
  def get_query category, name
    case category
    when 'Exam'
      @questions = Question.joins(chapter: { topic: {subject: :exam} }).where(exams: {name: name})
    when 'Subject'
      @questions = Question.joins(chapter: { topic: :subject }).where(subjects: {name: name})
    when 'Topic'
      @questions = Question.joins({chapter: :topic }).where(topics: {name: name})
    when 'Chapter'
      @questions = Question.joins(:chapter).where(chapters: {name: name})
    end
    return @questions
  end
end
