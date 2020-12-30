class UserSerializer < ActiveModel::Serializer 
 
  attributes :id, :role, :username, :first_name, :last_name, :company_name, :city, :photo, :ratings, :reviews, :user_reviews, :user_ratings

  def photo
    # next line of code  will get you URL of attached photo if needed
    # object.photo.service_url if object.photo.attached? ---url on Cloudionary
    # object.get_photo_url() if object.photo.attached?---- url on localhost

    object.photo.blob.key if object.photo.attached?  ## --- return blob key, which is the img name on Cloudionary
  end
end

  

 

