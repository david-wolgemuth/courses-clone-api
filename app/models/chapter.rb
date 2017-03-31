class Chapter < ApplicationRecord

	def lean
		attributes.slice 'id', 'title', 'description', 'page_ids'
	end

	def populated_lean
		hashed = lean
		hashed[:pages] = Page.stripped(page_ids.split(','))
		hashed
	end

	def self.stripped ids=nil
		chapters = select :id, :title, :description, :page_ids
		if ids.class == Array
			return chapters.find(ids)
		else
			return chapters
		end
	end

end
