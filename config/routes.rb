
Rails.application.routes.draw do

	post 'sessions' => 'sessions#create'
	get 'courses'	 => 'courses#index'
	get 'courses/:id' => 'courses#show'
	get 'courses/:course_id/:chapter_id' => 'chapters#show'

end
