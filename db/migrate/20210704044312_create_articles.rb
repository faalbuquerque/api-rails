class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps
    end
    add_index :articles, :slug, unique: true
  end
end
