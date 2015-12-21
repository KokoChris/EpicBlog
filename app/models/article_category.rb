class ArticleCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :article
  
end
