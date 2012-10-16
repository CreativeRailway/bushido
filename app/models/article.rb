class Article < ActiveRecord::Base
  has_many :tag_linkers
  has_many :tags, through: :tag_linkers

  attr_accessible :title, :content, :description, :head_image, :visible, :category_id, :_destroy
  accepts_nested_attributes_for :tags

  has_attached_file :head_image, :styles => {thumbnail: "200x200>"},
                    :url => "/system/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
end
