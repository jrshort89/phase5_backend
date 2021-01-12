# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times {Lesson.create(text: Faker::Lorem.sentence, subject: Faker::Lorem.words)}

5.times {Subject.create(name: Faker::Lorem.words)}

5.times {SubjectLesson.create(subject_id: Subject.all.sample.id, lesson_id: Lesson.all.sample.id)}

5.times {Solution.create(text: Faker::Lorem.sentence)}

5.times {UserSolution.create(user_id: User.first.id, solution_id: Solution.all.sample.id)}

