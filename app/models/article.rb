class Article < ActiveRecord::Base
  attr_accessible :title, :content, :description, :head_image, :visible

  has_many :tag_linkers
  has_many :tags, through: :tag_linkers

  has_attached_file :head_image, :styles => {thumbnail: "200x200>"},
                    :url => "/system/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
end
