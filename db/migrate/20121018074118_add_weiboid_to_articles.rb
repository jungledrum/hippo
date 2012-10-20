class AddWeiboidToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :weiboid, :integer
  end
end
