class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :path
      t.string :chapter_ids
      t.string :last_commit

      t.timestamps
    end
  end
end
