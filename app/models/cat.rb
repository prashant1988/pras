  class Cat < ActiveRecord::Base
  belongs_to :image#, #:dependent=>'destroy'
  attr_accessible :name, :age, :address
  validates :name,:age,:address , :presence=>true

end
