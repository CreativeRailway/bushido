class ArticleCategory < ActiveRecord::Base
  attr_accessible :title

  def self.collection_for_select
    result = []
    ArticleCategory.all.each do |article|
      result << [article.title, article.id]
    end
    result
  end
end
