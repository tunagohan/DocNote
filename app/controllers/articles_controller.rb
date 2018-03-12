class ArticlesController < InheritedResources::Base
  before_action :authenticate_user!
  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id, :tag_list)
  end
end

