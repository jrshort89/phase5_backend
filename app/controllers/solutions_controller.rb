class SolutionsController < ApplicationController

    def index
        @solutions = Solution.all
        render json: @solutions.to_json( include: [:lesson])
    end

    @all.to_json(include: [{:lessons => {include: :tests}}, :subject_lessons])

    def create
        @solution = Solution.new solution_params
        if @solution.save
            UserSolution.create user_id: params[:user_id], solution_id: @solution.id
            return render json: @solution
        end
    end

    private

    def solution_params
        params.require(:solution).permit(:text, :lesson_id, :user_id)
    end
end
