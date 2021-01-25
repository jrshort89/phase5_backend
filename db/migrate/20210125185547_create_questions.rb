class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :answer
      t.string :quiz_id
      t.string :option_one
      t.string :option_two
      t.string :option_three

      t.timestamps
    end
  end
end
