# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'git'
require 'yaml'
require 'pry'

class CourseLoader

	def initialize

		@courses_dir = "#{Rails.root}/courses/"
		@courses_dir = "courses/"

	end
	def load

		course_paths.each do |path|
			upsert_course path	
		end

	end

	private
	def course_paths

		out = []
		dirs = Dir.glob(@courses_dir + '*')
		dirs.each do |dir|
			out << dir[@courses_dir.length..-1]
		end
		out

	end
	def upsert_course path

		course = Course.find_by_path path
		if course.nil?
			course = create_course path
		else
			update_existing_course course
		end

		git = Git.open "#{@courses_dir}#{course.path}"
		course.last_commit = git.log.first.sha
		course.save

	end
	def create_course path

		abs_course_path = @courses_dir + path

		page_paths    = []
		chapter_paths = []

		file_paths = Dir.glob("#{abs_course_path}/**/*")
		file_paths.each do |file_path|
			if /.+\/.+.md/.match(file_path)
				page_paths << file_path
			elsif /#{path}\/.+\/info.yaml/.match(file_path)
				chapter_paths << file_path
			else
				puts "IGNORING FILE: #{file_path}"
			end
		end

		page_paths.each do |file_path|
			file_path = file_path[@courses_dir.length..-(1+'.md'.length)]
			create_page file_path	
		end

		chapter_paths.each do |file_path|
			file_path = file_path[@courses_dir.length..-(1+'/info.yaml'.length)]
			create_chapter file_path
		end

		info = YAML.load_file(abs_course_path + '/info.yaml').with_indifferent_access
		course = Course.new path:path
		puts "Creating course: #{course.path}"
		update_course_info course

	end
	def update_existing_course course

		course_path = @courses_dir + course.path
		git = Git.open course_path
		diff = git.diff course.last_commit

		if diff.size == 0
			return
		end

		page_diffs    = []
		chapter_diffs = []
		course_diff   = nil

		diff.each do |file_diff|
			if file_diff.path == 'info.yaml'
				course_diff = file_diff
			elsif /.+\/.+.md/.match(file_diff.path)
				page_diffs << file_diff
			elsif /.+\/info.yaml/.match(file_diff.path)
				chapter_diffs << file_diff
			else
				puts "IGNORING DIFF: #{file_diff.path}"
			end
		end

		resolve_page_diffs course, page_diffs
		resolve_chapter_diffs course, chapter_diffs

		if course_diff
			if course_diff.type == 'deleted'
				course.destroy
			else
				update_course_info course
			end
		end

	end
	def resolve_page_diffs course, page_diffs

		page_diffs.each do |page_diff|
			path = "#{course.path}/#{page_diff.path[0...-'.md'.length]}"
			case page_diff.type
			when 'deleted'
				Page.find_by_path(path).destroy
			when 'new'
				create_page path
			when 'modified'
				page = Page.find_by_path path
				update_page page
			end
		end

	end
	def resolve_chapter_diffs course, chapter_diffs

		chapter_diffs.each do |chapter_diff|
			path = "#{course.path}/#{chapter_diff.path}"
			case chapter_diff.type
			when 'deleted'
				Chapter.find_by_path(path).destroy
			when 'new'
				create_chapter path
			when 'modified'
				chapter = Chapter.find_by_path path
				update_chapter chapter
			end
		end	

	end
	def update_course_info course
		
		info_path = "#{@courses_dir}#{course.path}/info.yaml"

		info = YAML.load_file(info_path).with_indifferent_access
		course.title = info[:title]
		course.description = info[:description]
		chapter_ids = []
		info[:chapters].each do |chapter_path|
			chapter_ids << Chapter.find_by_path("#{course.path}/#{chapter_path}").id
		end
		course.chapter_ids = chapter_ids.join(',')


		course.save
		puts "Updated course: #{course.path}"

		course

	end
	def create_chapter path

		chapter = Chapter.new path: path
		puts "Creating chapter: #{chapter.path}"
		update_chapter chapter

	end
	def update_chapter chapter

		abs_chapter_path = "#{@courses_dir}#{chapter.path}"
		info = YAML.load_file(abs_chapter_path + '/info.yaml').with_indifferent_access

		chapter.title = info[:title]
		chapter.description = info[:description]

		page_ids = []
		info[:pages].each do |page_path|
			page_ids << Page.find_by_path("#{chapter.path}/#{page_path}").id
		end
		chapter.page_ids = page_ids.join(',')
		chapter.save
		puts "Updated chapter: #{chapter.path}"
		chapter

	end
	def create_page path

		page = Page.new path: path
		puts "Creating page: #{page.path}"
		update_page page

	end
	def update_page page

		abs_page_path = "#{@courses_dir}#{page.path}.md"
		content = File.read(abs_page_path)
		meta = /(?<=\<\!\-\-YAML)(.*)(?=\-\-\>)/m.match(content).captures.join("\n")
		meta_hash = YAML.load(meta).with_indifferent_access
		page.title = meta_hash[:title]
		page.content = content
		page.save
		puts "Updated page: #{page.path}"
		page

	end

end

CourseLoader.new.load


# all_files = Dir.glob("courses/ios/**/*")
# .each do |file|
# 	# puts file	
# end

# git = Git.open './courses/ios' #, :log => Logger.new(STDOUT)
# diff = git.diff("d7e44c1c1f2600ff6db0ce34a3b7d52d0a89b243")
# diff = git.diff("13f0a20e6aeabf5123ca0235b5c89acd3465e57e")
# diff = git.diff "3aabdba706bc325715ae85fffed57ddb08a18926"
# diff = git.show "6828a2d125a527fa3d8bc1b26cb606865c3f6953"
# puts diff.class
# puts diff.size
# diff.each do |d|
# 	puts "#{d.type} -> #{d.path}"
# end
# puts git.log.first
# diff = git.diff '6828a2d125a527fa3d8bc1b26cb606865c3f6953', '3aabdba706bc325715ae85fffed57ddb08a18926'

# puts "\n\n"
# diff.each do |file_diff|
# 	puts "\nFILE DIFF START\n"
# 	puts "Path: \"#{file_diff.path}\""
# 	puts "Type: \"#{file_diff.type}\""
# 	if ['new', 'modified'].include?(file_diff.type)
# 		full_path = "./ios/#{file_diff.path}"
# 		puts "Content: \"#{File.read(full_path)}\""
# 		# puts  "Binary: \"#{file_diff.binary}\""
# 	end
# 	puts "\nFILE DIFF END\n"
# end
