class V1::ReviewsController < ApplicationController

	def index
	  @reviews = Review.all
	  render json: @reviews, status: :ok
	end

	def create 
		@review = Review.new(review_params)
		@review.save
		render json: @review, status: :created
	end

	def destroy
		@review = Review.find_by_id(params[:id])
		if @review.destroy
			head(:ok)
		else
		  head(:unprocessable_entity)
		end
	end	  	
	
	private
	
	def review_params
	  params.require(:how_loud, :one_word).permit(:music_type)
	end	
end
