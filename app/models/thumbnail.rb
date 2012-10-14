class Thumbnail < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :owner, :polymorphic => true
  attr_accessible :image, :title, :content, :link_url, :link_text, :_destroy
  has_attached_file :image, :styles => {thumbnail: "200x200>",
                                        avatar: "75x75",},
                            :url => "/system/:attachment/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
end
