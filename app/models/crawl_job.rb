require 'open-uri'

class CrawlJob < Struct.new(:id)
  def perform
    article = Article.find(id)

    source = open(article.url).read
    content = Readability::Document.new(source).content

    doc = Nokogiri::HTML(open(article.url))
    if keywords = doc.css('meta[name="keywords"]')[0]
      keywords = keywords.attribute("content").content
    end

    if description = doc.css('meta[name="description"]')[0]
      description = description.attribute("content").content  
    end   
    
    article.content = content
    article.keywords = keywords
    article.description = description
    article.save
  end    
end