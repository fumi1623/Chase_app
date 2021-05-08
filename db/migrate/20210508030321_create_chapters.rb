class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :user_id
      t.integer :learning_id
      t.string :title
      t.text :chapter_text

      t.timestamps
    end
  end
end
