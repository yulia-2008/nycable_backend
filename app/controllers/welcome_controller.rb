class WelcomeController < ApplicationController
  skip_before_action :authorized
    def index
        render plain:  "Welcome"
    end
    #some testing while deploy to heroku 
end
