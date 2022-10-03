class API::V1::ArticlesController < ApplicationController
  def index
    render(json: Article.all)
  end
  def create
    article_params = params.require(:article).permit(:title, :description)
    @article = Article.new(article_params)
    if @article.save
      render(json: @article, status: :created)
    else
      render(json: { errors: @article.errors }, status: :unprocessable_entity)
    end
  end
end
