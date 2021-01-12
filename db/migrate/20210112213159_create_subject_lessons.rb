class CreateSubjectLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_lessons do |t|
      t.integer :subject_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
