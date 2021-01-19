class LessonsController < ApplicationController
    def index
        render json: Lesson.all
    end

    def show
        render json: Lesson.find(params[:id])
    end

    def create
        lesson = Lesson.new lesson_params
        subject = Subject.find_by name: params[:subject][:subject]
        if lesson.save
            SubjectLesson.create lesson_id: lesson.id, subject_id: subject.id
            return render json: lesson
        end
        render json: {error: 'Failed to create lesson!', status: 401}
    end

    private

    def lesson_params
        params.require(:lesson).permit(:text, :subject, :exercise, :solution, :test)
    end
end
