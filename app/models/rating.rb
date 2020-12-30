class Rating < ApplicationRecord
      # rating of the  User OR the Company
      belongs_to :subject, :polymorphic => true

      # the user who put rating (rating.user )
      belongs_to :user
end
