class ArticleRetriever

  def self.retrieve(url)
    JSON.parse(Excon.get(url).body)['article']
  end
end
