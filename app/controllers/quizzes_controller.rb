class QuizzesController < ApplicationController
    def new
      if params[:search]
        # @questions = Question.where(subject: params[:search])

        @questions = Question.where('LOWER(subject) = ?', params[:search].downcase)
      else
        @questions = Question.last(20)
      end
    end

def index
  @quizzes = Quiz.all
end

def show
    @quiz = Quiz.find(params[:id])
end

def edit
    @quiz = Quiz.find(params[:id])
end

def create
    # @quiz 
  @quiz = Quiz.new(question_params)

  if @quiz.save
      redirect_to @quiz
  else
      render 'new'
  end
end

def update
  @quiz = current_quiz
  @quiz = Quiz.find(params[:id])
 
  if @quiz.update(question_params)
    redirect_to @quiz
  else
    render 'edit'
  end
end

def selected_questions
  Question.update_all(:id => params[:question_names])
  params[:question_names]
  redirect_to new_quiz_path
end

def destroy
  @quiz = current_quiz
  @quiz = Quiz.find(params[:id])
  @quiz.destroy
 
  redirect_to questions_path
end

private
  def question_params
      params.require(:quizzes).permit(:question_name, :question_body, :answer, :subject, :quiz)
  end
end
