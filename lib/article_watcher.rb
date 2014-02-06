class ArticleWatcher

  def self.watch
    Article.all.each do |article|
      # load the article from the remote URL
      remote_article = ArticleRetriever.retrieve(article.url)
      if remote_article['updated_at'].to_datetime != article.last_updated_at
        article.contents.build(content: remote_article['content'])
        article.update_attributes(last_updated_at: remote_article['updated_at'])
        puts "Article - #{article.title} was updated"
        ArticleNotifier.process(article)
      end
    end
  end
end
