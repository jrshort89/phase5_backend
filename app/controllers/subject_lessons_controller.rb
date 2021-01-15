class SubjectLessonsController < ApplicationController
    def index
        @all = SubjectLesson.all
        render json: @all.to_json(include: [:subject, :lesson])
    end
end
