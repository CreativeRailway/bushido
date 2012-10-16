class Page < ActiveRecord::Base
  attr_accessible :name
  has_many :thumbnails, :as => :owner
end
