class Course < ApplicationRecord
	attr_accessor :chapters

	def lean
		attributes.slice 'id', 'title', 'description', 'chapter_ids'
	end

	def populated_lean
		hashed = lean
		hashed[:chapters] = Chapter.stripped(chapter_ids.split(','))
		hashed
	end

	def self.find_lean id
		find_stripped(id).attributes
	end

	def self.find_stripped id
		course = where(id:id).stripped.take
	end

	def self.stripped ids=nil
		courses = select :id, :title, :description, :chapter_ids
		if ids.class == Array
			return courses.find(ids)
		else
			return courses
		end
	end

end
