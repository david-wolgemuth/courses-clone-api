class CreatePageVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :page_visits do |t|
      t.references :user, foreign_key: true
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
