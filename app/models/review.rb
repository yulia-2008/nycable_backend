class Review < ApplicationRecord
    # review about the User OR the Company # review.user_id - who is the review about 
     belongs_to :object, :polymorphic => true

    # author of the review (review.user)
     belongs_to :user

end
