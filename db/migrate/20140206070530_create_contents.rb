class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :article_id
      t.text :content

      t.timestamps
    end
  end
end
