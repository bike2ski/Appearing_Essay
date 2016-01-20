class EssaysController < ApplicationController
	
	def index
		@essays = Essay.all
	end
	
	def show
		@essay = Essay.find(params[:id])
	end

	def new
		@essay = Essay.new
	end

	def edit
		@essay = Essay.find(params[:id])
	end

	def create
		@essay = Essay.new(essay_params)
		
		if @essay.save
			redirect_to @essay
		else
			render 'new'
		end
	end

	def update
		@essay = Essay.find(params[:id])

		if @essay.update(essay_params)
			redirect_to @essay
		else
			render 'edit'
		end
	end

	private
		def essay_params
			params.require(:essay).permit(:title, :author, :text)
		end
end
