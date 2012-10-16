class Tag < ActiveRecord::Base
  attr_accessible :title, :image

  has_many :tag_linkers
  has_many :articles, through: :tag_linkers, as: :taggable
end
