class QuizzesController < ApplicationController

    def index
        @quizzes = Quiz.all
        render json: @quizzes.to_json(include: [:questions])
    end
end