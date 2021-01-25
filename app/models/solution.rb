class Solution < ApplicationRecord
    has_many :user_solutions
    has_many :users, through: :user_solutions
    belongs_to :lesson
end
