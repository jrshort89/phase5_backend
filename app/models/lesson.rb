class Lesson < ApplicationRecord
    has_many :subject_lessons
    has_many :subjects, through: :subject_lessons
    has_many :tests
    has_many :solutions
end
