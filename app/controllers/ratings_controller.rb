class RatingsController < ApplicationController
    skip_before_action :authorized
    def index
        @ratings = Rating.all
        render json: @ratings, include: [:user]
     end
 
     def show 
         @rating = Rating.find_by(id:params[:id])
         render json: @rating, include: [:user]
     end
 
     def create 
        @rating = Rating.create!(rating_params)
        render json: @rating, include: [:user]
     end
    
      private
    
      def rating_params
        params.require(:rating).permit(:user_id, :num, :subject_id, :subject_type)
      end
end
