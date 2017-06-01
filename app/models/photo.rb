class Photo < ActiveRecord::Base
	attr_accessor :image
	has_attached_file :image, 
  :path => ":rails_root/public/:attachment/:id/:style/:filename",
  :url => "/:attachment/:id/:style/:filename", 
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "path to default image"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
