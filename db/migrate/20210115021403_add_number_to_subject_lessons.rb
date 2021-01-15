class AddNumberToSubjectLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :subject_lessons, :number, :integer
    add_column :subject_lessons, :name, :string
  end
end
