class RenameLessonsSubjectToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :lessons, :subject, :name
  end
end
