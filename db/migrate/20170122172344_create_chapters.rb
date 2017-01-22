class CreateChapters < ActiveRecord::Migration[5.0]
	def change
		create_table :chapters do |t|
			t.string :title
			t.string :description
			t.string :path
			t.string :page_ids

			t.timestamps
		end
	end
end
