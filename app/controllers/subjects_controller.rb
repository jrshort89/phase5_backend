class SubjectsController < ApplicationController

    def index
        @all = Subject.all
        render json: @all.to_json(include: [{:lessons => {include: [:tests, :solutions]}}, :subject_lessons])
    end
end
