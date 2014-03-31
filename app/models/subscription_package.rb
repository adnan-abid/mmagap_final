class SubscriptionPackage < ActiveRecord::Base
  
  include Paperclip::Glue
   
  attr_accessible :id, :title, :slug, :price, :short_desc, :description, :package_image, :is_active
  has_attached_file :package_image
  
  validates :title, :presence => true
  #validates :slug, :presence => true
  
  validates :price, :presence => true, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:min => 0, :max => 10000}
  #validates :short_desc, :presence => true, :length => { :maximum => 50 }
  #validates :description, :presence => true
  
  
end
