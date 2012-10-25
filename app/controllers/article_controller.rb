class ArticleController < ApplicationController
  def show
    article = Article.find(params[:id])

    render :text => article.content
  end

  def destroy
    article = Article.find(params[:id])
    article.delete

    redirect_to "/"
  end
end
