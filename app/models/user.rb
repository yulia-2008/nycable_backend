class User < ApplicationRecord
    #include Rails.application.routes.url_helpers
    has_secure_password   
    has_one_attached :photo

    # user_reviews - reviews that user wrote
    has_many :user_reviews, class_name: "Review", foreign_key: :user_id, dependent: :destroy

    # user_rating - rating that user put
    has_many :user_ratings, class_name: "Rating", foreign_key: :user_id, dependent: :destroy

    has_many :reviews, as:  :object     # user.review - the review about user
    has_many :ratings, as:  :subject    # user.rating - rating of the user

    validates :username, presence: true, uniqueness: {message: ' : User with the same username already exists!'} 
    validates :password_digest, presence: true 
    validates :role, presence: true 
    validates :city, presence: true 
    validates :first_name, presence: true
    validates :last_name, presence: true

  ######## method that I might need #### uncomment line 2 with it.     
  # get you url on localhost
    def get_photo_url
        if self.photo.attached?
            url_for(self.photo)
        end
    end
end
