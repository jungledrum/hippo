class AddMetaToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :keywords, :string
    add_column :articles, :description, :string
  end
end
