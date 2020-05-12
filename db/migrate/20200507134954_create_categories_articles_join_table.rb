class CreateCategoriesArticlesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :articles do |t|
      t.index :category_id
      t.index :article_id
    end
  end
end
