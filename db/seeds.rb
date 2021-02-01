# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lesson.destroy_all
Subject.destroy_all
Solution.destroy_all
SubjectLesson.destroy_all
UserSolution.destroy_all

5.times {Lesson.create(text: Faker::Lorem.sentence, name: Faker::Lorem.sentence)}

5.times {Subject.create(name: Faker::Lorem.sentence(word_count: 2))}

5.times {SubjectLesson.create(subject_id: Subject.all.sample.id, lesson_id: Lesson.all.sample.id, name: Faker::Hacker.abbreviation, number: rand(1..6))}

# 5.times {Solution.create(text: Faker::Lorem.sentence)}

# 5.times {UserSolution.create(user_id: User.first.id, solution_id: Solution.all.sample.id)}

