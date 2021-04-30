class CreateLearningComments < ActiveRecord::Migration[5.2]
  def change
    create_table :learning_comments do |t|
      t.text :comment
      t.integer :user_id
      t.string :learning_id

      t.timestamps
    end
  end
end
