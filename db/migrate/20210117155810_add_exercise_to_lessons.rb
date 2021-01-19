class AddExerciseToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :exercise, :string
    add_column :lessons, :solution, :string
    add_column :lessons, :test, :string
  end
end
