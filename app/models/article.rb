class Article < ActiveRecord::Base
  has_many :contents
  before_create :load_article

  validates_uniqueness_of :url
  validates_presence_of :url

  def load_article
    article = retrieve_article
    self.title = article['title']
    self.last_updated_at = article['updated_at']

    contents.build(content: article['html_content'])
  end

  def retrieve_article
    article = ArticleRetriever.retreive(url)
  end

end
