class Article < ActiveRecord::Base
  attr_accessible :content, :title, :url, :weiboid, :keywords, :description
end
