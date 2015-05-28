class ProverbtextsController < ApplicationController
	def new
		@proverbtext = Proverbtext.new()
	end
	def create
		@proverbtext = Proverbtext.new(proverbtext_params)

		if @proverbtext.save 
			flash[:success] = "Proverb added."
			redirect_to proverbtexts_path
		end
 	end 
 	def index
 		@proverbtext = Proverbtext.all
 	end
	def edit
	end
	def show
		@proverbtext = Proverbtext.all
	end
	def update
	end
	def delete
	end

private
	def proverbtext_params
		params.require(:proverbtext).permit(:quote,:show)
	end

end
