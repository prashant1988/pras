class Image < ActiveRecord::Base
  attr_accessible :describe, :name , :avatar
   attr_accessor  :upload_file_name
  has_attached_file :avatar # :styles => { :medium => "200x200>", :thumb => "50x50>" }
end
