class Article < ApplicationRecord
  def self.serialize_api
    { 'data':  Article.all.map { |article| article.data_content } }
  end

  def serialize_api
    { 'data': self.data_content }
  end

  def data_content
    { "type": "articles",
      "id": self.id.to_s,
      "attributes": self.articles_attributes }
  end

  def articles_attributes
    { "title": self.title,
      "content": self.content,
      "slug": self.slug }
  end
end
