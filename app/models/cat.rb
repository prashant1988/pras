class Cat < ActiveRecord::Base
  attr_accessible :name, :age, :address
  validates :name,:age,:address , :presence=>true

end
