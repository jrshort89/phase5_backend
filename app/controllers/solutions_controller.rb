class SolutionsController < ApplicationController
    def create
        @solution = Solution.new solution_params
        if @solution.save
            UserSolution.create user_id: params[:user_id], solution_id: @solution.id
            return render json: @solution
        end
    end

    private

    def solution_params
        params.require(:solution).permit(:text, :lesson_id)
    end
end
