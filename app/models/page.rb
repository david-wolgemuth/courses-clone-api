class Page < ApplicationRecord

	def lean
		attributes.slice 'id', 'title', 'content'
	end

	def self.stripped ids=nil
		pages = select :id, :title, :content
		if ids.class == Array
			return pages.find(ids)
		else
			return pages
		end
	end

end
