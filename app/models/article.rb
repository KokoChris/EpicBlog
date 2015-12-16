class Article < ActiveRecord::Base
 validates :title, presence: true , length, length: {minimum: 3,maximum: 50}
 validates :description, presence: truei, length: {minimum: 10,maximum: 300}


end
