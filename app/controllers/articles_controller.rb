class ArticlesController < InheritedResources::Base
  before_action :authenticate_user!
  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id)
  end

  def index
    @articles = Article.all
  end

  def set_article
    @articles = Article.find(params[:id])
  end
end

