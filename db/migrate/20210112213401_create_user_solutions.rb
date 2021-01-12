class CreateUserSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_solutions do |t|
      t.integer :user_id
      t.integer :solution_id

      t.timestamps
    end
  end
end
