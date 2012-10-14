class Page < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :thumbnails, :as => :owner
end
