class User < ActiveRecord::Base
  attr_accessible :email, :name
  avatar_file_name :avatar, :styles=>{:medium => "300x300>", :thumb => "100x100>" }
end
