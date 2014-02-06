desc "Watcher"
task :watch => :environment do
  ArticleWatcher.watch
end
