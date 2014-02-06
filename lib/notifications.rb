class Notifications

  def self.process(article)
    puts "Processing notifications!"
    article.subscriptions.each do |subscription|
      puts "Sending notification"
    end
  end

end
