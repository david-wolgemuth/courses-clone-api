class ChaptersController < ApplicationController

	def show
		chapter = Chapter.find params[:chapter_id]
		return render :json => {
			message: 'Chapter With Pages',
			chapter: chapter.populated_lean
		}
	end

end
