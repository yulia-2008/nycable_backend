class CompaniesController < ApplicationController
  skip_before_action :authorized
    def index
        @companies = Company.all
        render json: @companies, include: [:ratings => {:include => [:user => {:only => [:id] } ] }, 
                                           :reviews => {:include => [:user => {:only => [:id, :first_name, :last_name] } ] } ]
     end
 
     def show 
         @company = Company.find_by(id:params[:id])
         render json: @company, include: [:ratings => {:include => [:user => {:only => [:id] } ] },
                                          :reviews => {:include => [:user => {:only => [:id, :first_name, :last_name] } ] } ] 
     end

     def reviews
      @company = Company.find_by(id:params[:id])
      render json: @company.reviews, include: [:user]
     end

     def ratings
      @company = Company.find_by(id:params[:id])
      render json: @company.ratings, include: [:user]
     end

     def create 
        @company = Company.create!(company_params)
     end
 
     def update
        @company = Company.find_by(id:params[:id])   
        @company.update!(company_params)   
      end
 
      private
    
      def company_params
        params.require(:company).permit(:name)
      end
end
