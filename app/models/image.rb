class Image < ActiveRecord::Base
  has_many :cats
  attr_accessible :describe, :name , :avatar
   attr_accessor  :upload_file_name
  has_attached_file :avatar, :styles => {:large=>"100x100>", :medium => "75x75>", :thumb => "50x50>" }
end
