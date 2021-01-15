class SubjectsController < ApplicationController

    def index
        @all = Subject.all
        render json: @all.to_json(include: [:lessons, :subject_lessons])
    end
end
