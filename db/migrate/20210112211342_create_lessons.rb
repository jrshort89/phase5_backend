class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :text
      t.string :subject
      t.integer :subject_id

      t.timestamps
    end
  end
end
