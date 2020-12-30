class ReviewsController < ApplicationController
  skip_before_action :authorized
   
    def index
        @reviews = Review.all
        render json: @reviews
     end

     def show 
      @review = Review.find_by(id:params[:id])
     
      render json: {review:  ReviewSerializer.new(@review) }
     end

 
     def create 
        @review = Review.create!(review_params)
        render json: @review, include: [:user]
     end
    
      private
    
      def review_params
        params.require(:review).permit(:user_id, :name, :text, :object_id, :object_type)
      end
end
