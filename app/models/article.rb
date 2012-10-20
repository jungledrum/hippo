class Article < ActiveRecord::Base
  attr_accessible :content, :title, :url, :weiboid
end
