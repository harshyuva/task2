class Post < ApplicationRecord
	#has_many_attached :image
    #has_one_attached :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
     # validates_acceptance_of :image, content_type: /\Aimage\/.*\z/
    
   
     #has_many :post_attachments
     #accepts_nested_attributes_for :post_attachments
  

	mount_uploaders :images, ImagesUploader
	#mount_uploaders :attachments, ImagesUploader
	  serialize :images, JSON # If you use SQLite, add this line.

   
end
