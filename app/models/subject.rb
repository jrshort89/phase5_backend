class Subject < ApplicationRecord
    has_many :subject_lessons
    has_many :lessons, through: :subject_lessons
end
