class ReviewSerializer < ActiveModel::Serializer 
 
    attributes :id, :user_id, :text,  :object_type,  :user, :review_object
  
    # can not render object of the review just as :object, because :object is the review itself
   def review_object
   object.object
   end

  
  end

 
  