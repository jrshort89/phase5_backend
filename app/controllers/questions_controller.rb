class QuestionsController < ApplicationController


    def create
        @question = Question.new question_params
        @question.quiz_id = Quiz.find_by(name: params[:quiz]).id
        if @question.save
            render json: @question
        end
    end
    
    private

    def question_params
        params.require(:question).permit(:text, :answer, :option_one, :option_two, :option_three)
    end
end
