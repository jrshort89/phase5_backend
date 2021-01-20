class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :input
      t.string :output
      t.string :lesson_id

      t.timestamps
    end
  end
end
