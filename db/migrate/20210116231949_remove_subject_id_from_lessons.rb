class RemoveSubjectIdFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :subject_id, :integer
  end
end
