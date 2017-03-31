class CoursesController < ApplicationController

	def index
		courses = Course.stripped
		render :json => {
			message: 'Courses Index',
			courses: courses
		}
	end

	def show
		course = Course.find params[:id]
		render :json => {
			message: 'Course With Chapters',
			course: course.populated_lean
		}
	end

end
