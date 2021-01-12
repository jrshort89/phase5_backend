class SubjectLesson < ApplicationRecord
    belongs_to :subject
    belongs_to :lesson
end
