class Api::V1::ArticlesController < Api::V1::CustomApiController
  def index
    render json: Article.serialize_api
  end

  def show
    @article = Article.find(params[:id])

    render json: @article.serialize_api
  end
end
