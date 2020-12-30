class Company < ApplicationRecord
    has_many :reviews, as:  :object
    has_many :ratings, as:  :subject
end
