class UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :show, :update, :technicians, :upload_photo, :technician, :technician_reviews, :user_reviews, :technician_ratings, :user_ratings]
    
    def index
      @users = User.all
      render json: @users
     end
 
     def show 
      @user = User.find_by(id:params[:id])
      render json: {user: UserSerializer.new(@user)}     
     end
 
     # reviews that user-customer wrote  (user.user_reviews)
     def user_reviews
       @user = User.find_by(id:params[:id])
       render json: @user.user_reviews, include: [:object]
     end

     # rating that user-customer put  (user.user_ratings)
     def user_ratings
      @user = User.find_by(id:params[:id])
      render json: @user.user_ratings, include: [:subject]
    end

 
     def create 
        @user = User.create!(user_params)
        if @user.valid?
          @token = encode_token({ user_id: @user.id })
         render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
     end
     
     def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
     end

     def technicians
      @technicians = User.all.filter{|user| user.role=="technician"} 
      render json: @technicians 
     end

     # reviews from other users
     def technician_reviews
      @technician = User.find_by(id:params[:id])
      render json: @technician.reviews, include: [:user]
     end

     # ratings from other users
     def technician_ratings
      @technician = User.find_by(id:params[:id])
      render json: @technician.ratings, include: [:user]
     end
   
     def update 
      @user = User.find_by(id:params[:id])
      @user.update(user_params)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
     end

    def upload_photo
      @user = User.find_by(id:params[:id])
      @user.photo.attach(photo_params[:photo])
      if @user.photo.attached?
        render json: { user: UserSerializer.new(@user)}
      else 
        render json: {errors: "No picture attached"}
      end
    end

      private
    
      def user_params
        params.require(:user).permit( :role, :username, :password, :first_name, :last_name, :company_name, :city)
      end

      def photo_params
        params.permit(:photo)
      end
end
