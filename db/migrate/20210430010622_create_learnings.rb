class CreateLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :learnings do |t|
      t.string :learning_name
      t.string :learning_id
      t.text :learning_detail
      t.date :learning_post_date
      t.date :learning_upgrade_date
      t.string :learning_image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
