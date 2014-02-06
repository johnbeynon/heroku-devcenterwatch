class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.datetime :last_updated_at

      t.timestamps
    end
  end
end
